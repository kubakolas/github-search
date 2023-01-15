import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search/constants.dart';
import 'package:github_search/models/issue/issue_model.dart';
import 'package:github_search/pages/issues/bloc/issues_bloc.dart';
import 'package:github_search/pages/issues/widgets/issue_cell.dart';
import 'package:github_search/widgets/adaptive_app_bar.dart';
import 'package:github_search/widgets/app_error_view.dart';
import 'package:github_search/widgets/app_progress_indicator.dart';
import 'package:github_search/widgets/app_separator.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class IssuesPage extends StatefulWidget {
  const IssuesPage({
    super.key,
  });

  @override
  State<IssuesPage> createState() => _IssuesPageState();
}

class _IssuesPageState extends State<IssuesPage> {
  final PagingController<int, IssueModel> _pagingController = PagingController(
    firstPageKey: Constants.pagination.initialPageNumber,
  );
  late final IssuesBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = BlocProvider.of<IssuesBloc>(context);
    _pagingController.addPageRequestListener(
      (page) => _fetchIssuesPage(page),
    );
  }

  void _fetchIssuesPage(int page) {
    _bloc.add(
      IssuesEvent.fetchIssuesPageRequested(
        page: page,
      ),
    );
  }

  @override
  void dispose() {
    _bloc.close();
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdaptiveAppBar(context),
      body: SafeArea(
        child: BlocConsumer<IssuesBloc, IssuesState>(
          listener: _onState,
          builder: (_, state) => _buildBody(state),
        ),
      ),
    );
  }

  void _onState(BuildContext context, IssuesState state) {
    state.whenOrNull(
      fetchIssuesPageSucesss: (hasNextPage, issues, nextPageNumber) {
        if (hasNextPage) {
          _pagingController.appendPage(issues, nextPageNumber);
        } else {
          _pagingController.appendLastPage(issues);
        }
      },
      fetchIssuesPageFailure: (error) {
        _pagingController.error = error;
      },
    );
  }

  Widget _buildBody(IssuesState state) {
    return PagedListView<int, IssueModel>.separated(
      builderDelegate: PagedChildBuilderDelegate<IssueModel>(
        itemBuilder: (_, issue, __) => IssueCell(
          issue: issue,
        ),
        firstPageErrorIndicatorBuilder: (_) => _buildError(_pagingController.error),
        firstPageProgressIndicatorBuilder: (_) => _buildLoader(),
        newPageProgressIndicatorBuilder: (_) => _buildNextPageLoader(),
      ),
      pagingController: _pagingController,
      separatorBuilder: (_, __) => const AppSeparator(),
    );
  }

  Widget _buildLoader() {
    return const AppProgressIndicator();
  }

  Widget _buildNextPageLoader() {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: SizedBox.square(
        dimension: 24.0,
        child: _buildLoader(),
      ),
    );
  }

  Widget _buildError(dynamic error) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 100.0,
      ),
      child: AppErrorView(
        error: error,
        onTryAgainPressed: () => _pagingController.retryLastFailedRequest(),
      ),
    );
  }
}

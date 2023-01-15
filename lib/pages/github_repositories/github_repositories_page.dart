import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search/generated/l10n.dart';
import 'package:github_search/models/repository_query/github_repository_query_model.dart';
import 'package:github_search/pages/github_repositories/bloc/github_repositories_bloc.dart';
import 'package:github_search/pages/github_repositories/widgets/github_repository_cell.dart';
import 'package:github_search/pages/github_repository_details/github_repository_details_arguments.dart';
import 'package:github_search/router/app_router.dart';
import 'package:github_search/styles/app_animations.dart';
import 'package:github_search/widgets/app_separator.dart';
import 'package:github_search/widgets/spacing.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:github_search/constants.dart';
import 'package:github_search/models/github_repository/github_repository_model.dart';
import 'package:github_search/widgets/app_error_view.dart';
import 'package:github_search/widgets/app_progress_indicator.dart';

class GithubRepositoriesPage extends StatefulWidget {
  const GithubRepositoriesPage({
    super.key,
  });

  @override
  State<GithubRepositoriesPage> createState() => _GithubRepositoriesPageState();
}

class _GithubRepositoriesPageState extends State<GithubRepositoriesPage> {
  final PagingController<int, GithubRepositoryModel> _pagingController = PagingController(
    firstPageKey: Constants.pagination.initialPageNumber,
  );
  final TextEditingController _queryTextFieldController = TextEditingController();
  late final GithubRepositoriesBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = BlocProvider.of<GithubRepositoriesBloc>(context);
    _pagingController.addPageRequestListener(
      (page) => _fetchRepositoriesPage(page),
    );
  }

  void _fetchRepositoriesPage(int page) {
    _bloc.add(
      GithubRepositoriesEvent.fetchRepositoriesPageRequested(
        page: page,
        query: _queryTextFieldController.text,
      ),
    );
  }

  @override
  void dispose() {
    _bloc.close();
    _pagingController.dispose();
    _queryTextFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<GithubRepositoriesBloc, GithubRepositoriesState>(
          listener: _onState,
          builder: (_, state) => _buildBody(state),
        ),
      ),
    );
  }

  void _onState(BuildContext context, GithubRepositoriesState state) {
    state.whenOrNull(
      fetchGithubRepositoriesPageSucesss: (hasNextPage, nextPageNumber, repositories) {
        if (hasNextPage) {
          _pagingController.appendPage(repositories, nextPageNumber);
        } else {
          _pagingController.appendLastPage(repositories);
        }
      },
      fetchGithubRepositoriesPageFailure: (error) {
        _pagingController.error = error;
      },
      queryTextChange: () {
        _pagingController.refresh();
      },
    );
  }

  Widget _buildBody(GithubRepositoriesState state) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Spacing.vertical(16.0),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: _buildSearchTextField(),
        ),
        const Spacing.vertical(8.0),
        const AppSeparator(),
        Flexible(
          child: AnimatedSwitcher(
            duration: AppAnimations.animatedSwitcherDuration,
            child: state.maybeMap(
              initial: (_) => _buildCenteredText(S.of(context).searchForRepositoriesInstructionText),
              noResults: (_) => _buildCenteredText(S.of(context).noRepositoriesFound),
              orElse: () => _buildRepositoriesList(),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSearchTextField() {
    return SizedBox(
      height: 40.0,
      child: TextField(
        controller: _queryTextFieldController,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          contentPadding: EdgeInsets.zero,
          hintText: S.of(context).searchTextFieldHint,
          prefixIcon: const Icon(Icons.search),
        ),
        onChanged: (_) => _bloc.add(
          const GithubRepositoriesEvent.queryTextChanged(),
        ),
      ),
    );
  }

  Widget _buildRepositoriesList() {
    return PagedListView<int, GithubRepositoryModel>.separated(
      builderDelegate: PagedChildBuilderDelegate<GithubRepositoryModel>(
        itemBuilder: (_, repository, __) => GithubRepositoryCell(
          repository: repository,
          onPressed: () => _navigateToRepositoryDetails(repository),
        ),
        firstPageErrorIndicatorBuilder: (_) => _buildError(_pagingController.error),
        firstPageProgressIndicatorBuilder: (_) => _buildLoader(),
        newPageProgressIndicatorBuilder: (_) => _buildNextPageLoader(),
      ),
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
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

  Widget _buildCenteredText(String text) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Text(
        text,
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

  void _navigateToRepositoryDetails(GithubRepositoryModel repository) {
    context.pushNamed(
      AppRouter.repositoryDetails,
      extra: GithubRepositoryDetailsArguments(
        repositoryQueryModel: GithubRepositoryQueryModel(
          ownerLogin: repository.owner?.login,
          repositoryName: repository.name,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search/extensions/string_extensions.dart';
import 'package:github_search/generated/l10n.dart';
import 'package:github_search/models/github_repository_details/github_repository_details_model.dart';
import 'package:github_search/models/github_user/github_user_model.dart';
import 'package:github_search/models/repository_query/github_repository_query_model.dart';
import 'package:github_search/networking/models/issue/issue_state.dart';
import 'package:github_search/pages/github_repository_details/bloc/github_repository_details_bloc.dart';
import 'package:github_search/pages/issues/issues_arguments.dart';
import 'package:github_search/router/app_router.dart';
import 'package:github_search/styles/app_animations.dart';
import 'package:github_search/styles/app_colors.dart';
import 'package:github_search/utils/url_lanucher.dart';
import 'package:github_search/widgets/adaptive_app_bar.dart';
import 'package:github_search/widgets/adaptive_button.dart';
import 'package:github_search/widgets/app_error_view.dart';
import 'package:github_search/widgets/app_progress_indicator.dart';
import 'package:github_search/widgets/app_separator.dart';
import 'package:github_search/widgets/spacing.dart';
import 'package:github_search/widgets/user_info_panel.dart';
import 'package:go_router/go_router.dart';

class GithubRepositoryDetailsPage extends StatefulWidget {
  const GithubRepositoryDetailsPage({
    super.key,
  });

  @override
  State<GithubRepositoryDetailsPage> createState() => _GithubRepositoryDetailsPageState();
}

class _GithubRepositoryDetailsPageState extends State<GithubRepositoryDetailsPage> {
  late final GithubRepositoryDetailsBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = BlocProvider.of<GithubRepositoryDetailsBloc>(context);
    _fetchRepositoryDetails();
  }

  void _fetchRepositoryDetails() {
    _bloc.add(
      const GithubRepositoryDetailsEvent.fetchRepositoryDetailsRequsted(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdaptiveAppBar(context),
      body: BlocBuilder<GithubRepositoryDetailsBloc, GithubRepositoryDetailsState>(
        builder: (_, state) => _buildBody(state),
      ),
    );
  }

  Widget _buildBody(GithubRepositoryDetailsState state) {
    return AnimatedSwitcher(
      duration: AppAnimations.animatedSwitcherDuration,
      child: state.when(
        initial: () => const SizedBox.shrink(),
        fetchRepositoryDetailsInProgress: () => const AppProgressIndicator(),
        fetchRepositoryDetailsSuccess: _buildRepositoryDetails,
        fetchRepositoryDetailsFailure: _buildError,
      ),
    );
  }

  Widget _buildRepositoryDetails(GithubRepositoryDetailsModel repository) {
    final GithubUserModel? owner = repository.owner;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 16.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (owner != null) ...[
            UserInfoPanel(owner),
            const Spacing.vertical(12.0),
          ],
          _buildName(repository),
          const Spacing.vertical(16.0),
          if (!repository.description.isNullOrBlank) ...[
            _buildDescription(repository),
            const Spacing.vertical(16.0),
          ],
          if (!repository.homepage.isNullOrBlank) ...[
            _buildHomepage(repository),
            const Spacing.vertical(16.0),
          ],
          _buildStarsAndLanguageInfo(repository),
          const Spacing.vertical(32.0),
          _buildOpenIssuesPanel(repository),
        ],
      ),
    );
  }

  Widget _buildName(GithubRepositoryDetailsModel repository) {
    return Text(
      repository.name.orEmpty(),
      style: TextStyle(
        color: AppColors.of(context).textDefault,
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildDescription(GithubRepositoryDetailsModel repository) {
    return Text(
      repository.description.orEmpty(),
      style: TextStyle(
        color: AppColors.of(context).textDefault,
        fontSize: 16.0,
      ),
    );
  }

  Widget _buildHomepage(GithubRepositoryDetailsModel repository) {
    return GestureDetector(
      onTap: () => UrlLauncher.lanuch(repository.homepage.orEmpty()),
      child: _buildIconWithNameRow(Icons.link, repository.homepage.orEmpty()),
    );
  }

  Widget _buildStarsAndLanguageInfo(GithubRepositoryDetailsModel repository) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildIconWithNameRow(Icons.star, repository.stargazerCount.toString()),
        const Spacing.horizontal(16.0),
        _buildIconWithNameRow(Icons.computer, repository.language.orEmpty()),
      ],
    );
  }

  Widget _buildIconWithNameRow(IconData iconData, String name) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 20.0,
        ),
        const Spacing.horizontal(6.0),
        Text(
          name,
          style: const TextStyle(
            fontSize: 15.0,
          ),
        ),
      ],
    );
  }

  Widget _buildOpenIssuesPanel(GithubRepositoryDetailsModel repository) {
    return Column(
      children: [
        const AppSeparator(),
        _buildOpenIssuesButton(repository),
        const AppSeparator(),
      ],
    );
  }

  Widget _buildOpenIssuesButton(GithubRepositoryDetailsModel repository) {
    return AdaptiveButton(
      onPressed: () => _naviateToOpenIssues(repository),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
        ),
        child: Row(
          children: [
            const Icon(
              Icons.error,
              color: Colors.lightGreen,
              size: 24.0,
            ),
            const Spacing.horizontal(12.0),
            Text(
              S.of(context).openIssues,
              style: TextStyle(color: AppColors.of(context).textDefault),
            ),
          ],
        ),
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
        onTryAgainPressed: _fetchRepositoryDetails,
      ),
    );
  }

  void _naviateToOpenIssues(GithubRepositoryDetailsModel repository) {
    context.pushNamed(
      AppRouter.repositoryIssues,
      extra: IssuesArguments(
        initialIssuesState: IssueState.open,
        repositoryQueryModel: GithubRepositoryQueryModel(
          ownerLogin: repository.owner?.login,
          repositoryName: repository.name,
        ),
      ),
    );
  }
}

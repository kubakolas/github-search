import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search/pages/github_repositories/bloc/github_repositories_bloc.dart';
import 'package:github_search/pages/github_repositories/github_repositories_page.dart';
import 'package:github_search/pages/github_repository_details/bloc/github_repository_details_bloc.dart';
import 'package:github_search/pages/github_repository_details/github_repository_details_page.dart';
import 'package:github_search/pages/github_repository_details/github_repository_details_arguments.dart';
import 'package:github_search/pages/issues/bloc/issues_bloc.dart';
import 'package:github_search/pages/issues/issues_arguments.dart';
import 'package:github_search/pages/issues/issues_page.dart';
import 'package:github_search/repositories/github_repositories/github_repositories_repository.dart';
import 'package:github_search/repositories/search/search_repository.dart';
import 'package:github_search/service_locator.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const String _rootPath = '/';
  static const String repositoryDetails = 'repository-details';
  static const String repositoryIssues = 'repository-issues';

  const AppRouter._();

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: _rootPath,
        builder: (_, __) => BlocProvider(
          create: (_) => GithubRepositoriesBloc(
            searchRepository: ServiceLocator().get<SearchRepository>(),
          ),
          child: const GithubRepositoriesPage(),
        ),
        routes: [
          GoRoute(
            name: repositoryDetails,
            path: repositoryDetails,
            builder: (_, state) => BlocProvider(
              create: (_) => GithubRepositoryDetailsBloc(
                arguments: state.extra as GithubRepositoryDetailsArguments,
                repositoriesRepository: ServiceLocator().get<GithubRepositoriesRepository>(),
              ),
              child: const GithubRepositoryDetailsPage(),
            ),
            routes: [
              GoRoute(
                name: repositoryIssues,
                path: repositoryIssues,
                builder: (_, state) => BlocProvider(
                  create: (_) => IssuesBloc(
                    arguments: state.extra as IssuesArguments,
                    repositoriesRepository: ServiceLocator().get<GithubRepositoriesRepository>(),
                  ),
                  child: const IssuesPage(),
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

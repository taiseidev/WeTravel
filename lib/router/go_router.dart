import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:we_travel/router/navigator_key.dart';
import 'package:we_travel/router/scaffold_with_bottom_nav_bar.dart';
import 'package:we_travel/router/tabs.dart';

import '../presentation/home/home.dart';

final routerProvider = Provider<GoRouter>(
  (ref) => GoRouter(
    initialLocation: '/top',
    navigatorKey: ref.watch(rootNavigatorProvider),
    debugLogDiagnostics: true,
    routes: [
      // トップページ
      GoRoute(
        path: '/top',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          child: TopPage(),
        ),
      ),
      // ホームページ
      ShellRoute(
        navigatorKey: ref.watch(shellNavigatorProvider),
        builder: (context, state, child) {
          return ScaffoldWithBottomNavBar(
            tabs: ref.watch(tabsProvider),
            child: child,
          );
        },
        routes: [
          // Shopping Cart
          GoRoute(
            path: '/home',
            pageBuilder: (context, state) => NoTransitionPage<void>(
              key: state.pageKey,
              child:
                  const HomePage(label: 'home', detailsPath: '/home/details'),
            ),
          ),
          GoRoute(
            path: '/article',
            pageBuilder: (context, state) => NoTransitionPage<void>(
              key: state.pageKey,
              child: const HomePage(
                label: 'article',
                detailsPath: '/article/details',
              ),
            ),
          ),
          GoRoute(
            path: '/notification',
            pageBuilder: (context, state) => NoTransitionPage<void>(
              key: state.pageKey,
              child: const HomePage(
                label: 'notification',
                detailsPath: '/notification/details',
              ),
            ),
          ),
          GoRoute(
            path: '/profile',
            pageBuilder: (context, state) => NoTransitionPage<void>(
              key: state.pageKey,
              child: const HomePage(
                label: 'profile',
                detailsPath: '/profile/details',
              ),
            ),
          ),
        ],
      ),
    ],
  ),
);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:we_travel/router/navigator_key.dart';
import 'package:we_travel/router/scaffold_with_bottom_nav_bar.dart';
import 'package:we_travel/router/tabs.dart';

import '../features/account/presentation/pages/profile_page.dart';
import '../features/auth/presentation/pages/sign_in_page.dart';
import '../presentation/home/home.dart';

part 'go_router.freezed.dart';

final routerProvider = Provider<GoRouter>(
  (ref) => GoRouter(
    initialLocation: '/signIn',
    navigatorKey: ref.watch(rootNavigatorProvider),
    debugLogDiagnostics: true,
    routes: [
      // トップページ
      GoRoute(
        path: '/signIn',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          child: const SignInPage(),
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
              child: const ProfilePage(),
            ),
          ),
        ],
      ),
    ],
    // ログイン情報を保持するクラスの変更を監視
    redirect: (context, state) {
      final login = ref.watch(loginInfoProvider.notifier).isLogined();
      if (login) {
        return '/home';
      }

      // リダイレクトが不要な場合は元々のルートへ移動
      return null;
    },
  ),
);

// ログイン情報を保持するデータクラス
@freezed
class LoginAttribute with _$LoginAttribute {
  const factory LoginAttribute({
    required String userId,
  }) = _LoginAttribute;
}

final loginInfoProvider =
    StateNotifierProvider<LoginAttributeNotifier, LoginAttribute>((ref) {
  return LoginAttributeNotifier();
});

class LoginAttributeNotifier extends StateNotifier<LoginAttribute> {
  LoginAttributeNotifier() : super(const LoginAttribute(userId: ''));

  void signIn(String userId) {
    state = state.copyWith(userId: userId);
  }

  void signOut() {
    state = state.copyWith(userId: '');
  }

  bool isLogined() {
    return state.userId.isNotEmpty;
  }
}

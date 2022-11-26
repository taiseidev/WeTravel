import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:we_travel/router/go_router.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      loginInfoProvider,
      (_, __) {
        // ignore: unused_result
        ref.refresh(routerProvider);
      },
    );
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: ref.watch(routerProvider).routeInformationParser,
      routerDelegate: ref.watch(routerProvider).routerDelegate,
      routeInformationProvider:
          ref.watch(routerProvider).routeInformationProvider,
    );
  }
}

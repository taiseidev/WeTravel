import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Widget for the root/initial pages in the bottom navigation bar.
class HomePage extends StatelessWidget {
  /// Creates a RootScreen
  const HomePage({required this.label, required this.detailsPath, super.key});

  /// The label
  final String label;

  /// The path to the detail page
  final String detailsPath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              label,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              detailsPath,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
      ),
    );
  }
}

class TopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'トップページ',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            TextButton(
              onPressed: () => context.go('/home'),
              child: const Text('ホーム画面へ'),
            ),
          ],
        ),
      ),
    );
  }
}

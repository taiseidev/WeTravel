import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WeTravel(),
    );
  }
}

class WeTravel extends StatelessWidget {
  const WeTravel({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('WeTravel'),
      ),
    );
  }
}

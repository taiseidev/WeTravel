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

class WeTravel extends StatefulWidget {
  const WeTravel({super.key});

  @override
  State<WeTravel> createState() => _WeTravelState();
}

class _WeTravelState extends State<WeTravel> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: incrementCounter),
      body: Center(
        child: Text(counter.toString()),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "This is your first flutter app",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("HomePage"),
        ),
        body: const Center(
          child: const Text("Welcome home"),
        ),
      ),
    );
  }
}

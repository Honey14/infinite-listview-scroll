import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:infinite_listview_scroll/DifferentRandomWords.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: "This is your first flutter app",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("HomePage"),
        ),
        body: Center(
          child: DifferentRandomWords(),
        ),
      ),
    );
  }
}

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class DifferentRandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DifferentRandomWordsState();
}

class _DifferentRandomWordsState extends State<DifferentRandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asCamelCase);
  }
}


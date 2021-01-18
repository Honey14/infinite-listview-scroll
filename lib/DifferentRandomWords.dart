import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class DifferentRandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DifferentRandomWordsState();
}

class _DifferentRandomWordsState extends State<DifferentRandomWords> {

  final _suggestions = <WordPair>[];
  final biggerFont = TextStyle(fontSize: 16.0);

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) return Divider();

          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: biggerFont,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to your flutter start"),
      ),
      body: _buildSuggestions(),
    );
  }
}


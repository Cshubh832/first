import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Hello',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Chat Box'),
        ),
        body: Center(
//          child: Text(wordPair.asPascalCase),
          child: RandomWords(),
        ),
      ),
    );
  }
}

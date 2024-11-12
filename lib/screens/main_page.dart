import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  final List<Map<String, String>> words = [
    {'word': 'Apple'},
    {'word': 'Cat'},
    {'word': 'Dog'},
    {'word': 'Tree'},
  ]; // Replace with dynamic data from backend

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Vocabulary Words')),
      body: ListView.builder(
        itemCount: words.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(words[index]['word']!),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/word_details',
                arguments: words[index]['word'],
              );
            },
          );
        },
      ),
    );
  }
}

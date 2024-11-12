import 'package:flutter/material.dart';

class WordDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final word = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(title: Text('Word Details')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(word, style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Meaning:', style: TextStyle(fontSize: 18)),
            Text('A random definition goes here.', style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('Type:', style: TextStyle(fontSize: 18)),
            Text('Noun', style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('Sentence:', style: TextStyle(fontSize: 18)),
            Text('The apple is on the table.', style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                // Implement sound functionality from backend
              },
              icon: Icon(Icons.volume_up),
              label: Text('Pronounce'),
            ),
          ],
        ),
      ),
    );
  }
}

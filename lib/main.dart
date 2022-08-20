
import 'package:flutter/material.dart';
import 'package:vamp_diaries/posts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vampire Diaries',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PostsPage(),
    );
  }
}



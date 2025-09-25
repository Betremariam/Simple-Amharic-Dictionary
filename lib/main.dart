import 'package:flutter/material.dart';
import 'dictionary_data.dart';
import 'dictionary_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amharic-English Dictionary',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const DictionaryScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

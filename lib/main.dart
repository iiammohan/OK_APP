import 'package:flutter/material.dart';
import 'ok_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OK App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const OkScreen(),
    );
  }
}





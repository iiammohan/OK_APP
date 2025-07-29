import 'package:flutter/material.dart';
import 'dart:io';

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

class OkScreen extends StatelessWidget {
  const OkScreen({super.key});

  void _exitApp() {
    exit(0); // force quit app
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OK App')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Welcome to OK App',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _exitApp,
              child: const Text('OK'),
            ),
          ],
        ),
      ),
    );
  }
}

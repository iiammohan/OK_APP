import 'package:flutter/material.dart';
import 'dart:io';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  void _exitApp() {
    exit(0); // force quit app
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: _exitApp,
              child: const Text('Exit'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}

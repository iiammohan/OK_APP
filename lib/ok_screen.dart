import 'package:flutter/material.dart';
import 'second_screen.dart';

class OkScreen extends StatelessWidget {
  const OkScreen({super.key});

  void _goToSecondScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SecondScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OK App')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () => _goToSecondScreen(context),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
    );
  }
}

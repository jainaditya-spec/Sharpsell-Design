import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

void main() {
  runApp(const TestStorybookApp());
}

class TestStorybookApp extends StatelessWidget {
  const TestStorybookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Storybook(
      stories: [
        Story(
          name: 'Test/Hello',
          description: 'Simple test story',
          builder: (context) => const Scaffold(
            body: Center(
              child: Text(
                'Hello Storybook!',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

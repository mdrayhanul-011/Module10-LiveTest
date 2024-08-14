import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Text Styling App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Flutter Text Styling',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),

              const SizedBox(height: 12),

              const Text(
                'Experiment with text styles',
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16),
              ),

              const SizedBox(height: 12),

              TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('You clicked the button!')),
                  );
                },
                child: const Text('Click me'),
              ),

              const SizedBox(height: 12),

              const Text.rich(
                TextSpan(
                  text: 'Welcome to ',
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Flutter!',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

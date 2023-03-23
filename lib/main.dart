import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

// 1st part of a Stateful Widget
// "Widget itself"
class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

// 2nd part of a Stateful Widget
// "State"
class _AppState extends State<App> {
  int counter = 0;

  void onClicked() {
    // setState함수를 호출하지 않으면 'build'메서드가 재실행되지 않아 UI가 변화하지 않음.
    setState(() {
      counter = counter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click Count',
                style: TextStyle(fontSize: 30),
              ),
              Text(
                '$counter',
                style: const TextStyle(fontSize: 30),
              ),
              IconButton(
                onPressed: onClicked,
                icon: const Icon(
                  Icons.add_box_rounded,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

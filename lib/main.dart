import 'package:flutter/material.dart';
import 'package:flutter_first_look/screens/loading.dart';
// import 'package:flutter_first_look/screens/loading.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loading(),
    );
  }
}

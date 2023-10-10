import 'package:flutter/material.dart';
import 'package:lab5/main.dart';
import 'main.dart';

class mycounter extends StatefulWidget {
  const mycounter({super.key});

  @override
  State<mycounter> createState() => _mycounterState();
}

class _mycounterState extends State<mycounter> {
  @override
  Widget build(BuildContext context) {
    int n = 0;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextButton(
          child: Text("$n"),
          onPressed: () {
            n++;
          },
        ),
      ),
    );
  }
}

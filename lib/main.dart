import 'package:flutter/material.dart';
import 'package:flutter_quiz/quiz_container.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: QuizContainer(
          Color.fromARGB(255, 80, 107, 170),
          Color.fromARGB(255, 71, 101, 137),
        ),
      ),
    ),
  );
}

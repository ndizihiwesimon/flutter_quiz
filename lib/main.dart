import 'package:flutter/material.dart';
import 'package:flutter_quiz/quiz_container.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 80, 107, 170),
                Color.fromARGB(255, 71, 101, 137),
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: const QuizContainer(),
        ),
      ),
    ),
  );
}

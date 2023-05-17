import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Image(
            image: AssetImage("assets/images/quiz-logo.png"),
            height: 250,
            color: Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            "Learn Flutter the Fun way",
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 209, 237, 255),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}

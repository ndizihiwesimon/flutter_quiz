import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: data['correct_answer'] == data['user_answer']
                        ? const Color.fromARGB(255, 93, 182, 250)
                        : Colors.amberAccent,
                  ),
                  child: Text(
                    ((data['question_id'] as int) + 1).toString(),
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 248, 252, 255),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        data['correct_answer'] as String,
                        style: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 245, 141, 141),
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        data['user_answer'] as String,
                        style: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 93, 182, 250),
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

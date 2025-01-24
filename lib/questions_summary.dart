import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 0),
                        color: data["user_answer"] == data["correct_answer"]
                            ? const Color.fromARGB(255, 136, 245, 34)
                            : const Color.fromARGB(255, 245, 56, 97),
                      ),
                      child: Center(
                        heightFactor: 2.3,
                        child: Text(
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inconsolata(
                              fontSize: 20, fontWeight: FontWeight.w600),
                          ((data['question_index'] as int) + 1).toString(),
                        ),
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              style: GoogleFonts.inconsolata(
                                  fontSize: 16,
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                  fontWeight: FontWeight.w600),
                              (data["question"] as String)),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                              style: GoogleFonts.inconsolata(
                                  fontSize: 16,
                                  color:
                                      const Color.fromARGB(255, 239, 180, 247),
                                  fontWeight: FontWeight.w300),
                              data["user_answer"] as String),
                          Text(
                              style: GoogleFonts.inconsolata(
                                  fontSize: 16,
                                  color:
                                      const Color.fromARGB(255, 140, 247, 229),
                                  fontWeight: FontWeight.w300),
                              data['correct_answer'] as String),
                          const SizedBox(height: 12),
                        ]),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}

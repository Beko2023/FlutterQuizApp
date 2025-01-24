import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 250,
            color: const Color.fromARGB(
                255, 240, 212, 211), //Color helps us set opacity
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            "Learn Flutter the fun way!",
            style: GoogleFonts.inconsolata(
              fontSize: 30,
              color: const Color.fromRGBO(255, 255, 255, 1),
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          OutlinedButton.icon(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
            label: Text(
              "Start Quiz",
              style: GoogleFonts.inconsolata(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 30),
            ),
            onPressed: startQuiz,
            icon: const Icon(
              Icons.psychology_alt_sharp,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}

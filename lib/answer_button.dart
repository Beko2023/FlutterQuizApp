import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({required this.text, required this.onTap, super.key});

  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(
            style: GoogleFonts.inconsolata(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              // height: 0,
            ),
            textAlign: TextAlign.center,
            text),
      ),
    );
  }
}

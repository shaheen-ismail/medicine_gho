import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine_gho/core/constants/colors.dart';

class SignInWithButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final String imagePath;

  const SignInWithButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: size.width * 0.45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 20,
              width: 20,
            ),
            const SizedBox(width: 10),
            Text(
              text,
              style: GoogleFonts.inter(
                fontSize: 12.0,
                color: ColorConstants.mainBlue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

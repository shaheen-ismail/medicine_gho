import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine_gho/core/constants/constants.dart';

class RowText extends StatelessWidget {
  final String title;
  final String buttonText;
  final VoidCallback onButtonTap;

  const RowText({
    super.key,
    required this.title,
    required this.buttonText,
    required this.onButtonTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.inter(
            color: ColorConstants.black,
            fontWeight: FontWeight.bold,
            fontSize: 14.0,
          ),
        ),
        TextButton(
          onPressed: onButtonTap,
          child: Text(
            buttonText,
            style: GoogleFonts.inter(
              fontSize: 12.0,
              color: ColorConstants.mainBlue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

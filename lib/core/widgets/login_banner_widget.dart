import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine_gho/core/constants/colors.dart';

class LoginBanner extends StatelessWidget {
  final String text;
  final IconData icon;

  const LoginBanner({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.30,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(90.0),
          bottomRight: Radius.circular(90.0),
        ),
        color: ColorConstants.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 80.0,
            color: ColorConstants.mainBlue,
          ),
          Center(
            child: Text(
              text,
              style: GoogleFonts.inter(
                color: ColorConstants.black,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

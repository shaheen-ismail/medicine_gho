import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constants.dart';

class BookingCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  const BookingCard({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 90,
        width: size.height * 0.22,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: ColorConstants.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                icon,
                color: ColorConstants.mainBlue,
                size: 40,
              ),
              const SizedBox(height: 5),
              Text(
                text,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.bold,
                  color: ColorConstants.black,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

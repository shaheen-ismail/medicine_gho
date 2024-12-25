import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine_gho/core/constants/constants.dart';

class OfferContainer extends StatelessWidget {
  final String title;
  final String description;
  final String buttonText;
  final String imagePath;
  final VoidCallback onButtonTap;

  const OfferContainer({
    super.key,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.imagePath,
    required this.onButtonTap,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(02.0),
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: ColorConstants.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.inter(
                          color: ColorConstants.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0),
                    ),
                    Text(
                      description,
                      style: GoogleFonts.inter(
                          color: ColorConstants.black, fontSize: 12.0),
                    ),
                    const SizedBox(height: 8),
                    GestureDetector(
                      onTap: onButtonTap,
                      child: Container(
                        height: 30,
                        width: size.height * 0.10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: ColorConstants.mainBlue,
                        ),
                        child: Center(
                          child: Text(
                            buttonText,
                            style: const TextStyle(
                              color: ColorConstants.white,
                              fontSize: 10.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(imagePath),
            ],
          ),
        ),
      ),
    );
  }
}

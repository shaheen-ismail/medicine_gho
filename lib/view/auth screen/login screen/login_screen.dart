import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine_gho/core/constants/colors.dart';
import 'package:medicine_gho/core/constants/text_constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorConstants.mainBgColor,
      body: Column(
        children: [
          // make stateless
          Container(
            height: size.height * 0.30,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(90.0),
                  bottomRight: Radius.circular(90.0)),
              color: ColorConstants.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  EneftyIcons.hospital_outline,
                  size: 80.0,
                  color: ColorConstants.mainBlue,
                ),
                Center(
                  child: Text(TextConstants.yourdoctor,
                      style: GoogleFonts.inter(
                          color: ColorConstants.black,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
          // make stateless
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Email",
                style: GoogleFonts.inter(
                    fontSize: 14.0,
                    color: ColorConstants.black,
                    fontWeight: FontWeight.bold),
              ),
              TextFormField(),
            ],
          )
        ],
      ),
    );
  }
}

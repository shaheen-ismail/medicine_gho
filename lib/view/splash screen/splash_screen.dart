import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine_gho/controller/splash_controller.dart';
import 'package:medicine_gho/core/constants/colors.dart';
import 'package:medicine_gho/core/constants/text_constants.dart';
import 'package:medicine_gho/view/auth%20screen/login%20screen/login_screen.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final splashProvider = Provider.of<SplashProvider>(context, listen: false);
    splashProvider.initializeApp().then((_) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
    return Scaffold(
      backgroundColor: ColorConstants.mainBlue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            EneftyIcons.hospital_outline,
            size: 80.0,
            color: ColorConstants.white,
          ),
          Center(
            child: Text(TextConstants.yourdoctor,
                style: GoogleFonts.inter(
                    color: ColorConstants.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}

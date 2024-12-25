import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine_gho/controller/splash_controller.dart';
import 'package:medicine_gho/core/constants/colors.dart';
import 'package:medicine_gho/core/constants/text_constants.dart';
import 'package:medicine_gho/view/auth%20screen/login%20screen/login_screen.dart';
import 'package:medicine_gho/view/bottom%20nav/bottom_nav.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final splashProvider = Provider.of<SplashProvider>(context, listen: false);
    splashProvider.initializeApp().then((_) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? accessToken = prefs.getString('access_token');

      if (accessToken != null && accessToken.isNotEmpty) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => BottomNavBarExample()),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      }
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

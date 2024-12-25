import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medicine_gho/view/auth%20screen/login%20screen/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/constants.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});
  Future<void> logout(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('access_token');

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            radius: 30.0,
            backgroundColor: ColorConstants.mainBlue,
            child: Icon(
              Iconsax.profile,
              color: ColorConstants.mainBgColor,
              size: 30.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi, Mohammed",
                  style: GoogleFonts.inter(
                      fontSize: 14.0,
                      color: ColorConstants.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "How are you today?",
                  style: GoogleFonts.inter(
                      fontSize: 10.0,
                      color: ColorConstants.mainBlue,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorConstants.white,
                  ),
                  child: const Icon(
                    Iconsax.notification,
                    color: ColorConstants.mainBlue,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              IconButton(
                  onPressed: () => logout(context),
                  icon: const Icon(
                    Iconsax.logout,
                    color: Colors.red,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

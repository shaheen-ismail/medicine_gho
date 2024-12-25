import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine_gho/core/constants/colors.dart';
import 'package:medicine_gho/core/constants/text_constants.dart';
import 'package:medicine_gho/core/widgets/custom_textform_widget.dart';

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
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
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
                const CustomTextFormField(hintText: "Enter Email"),
                const SizedBox(height: 16),
                Text(
                  "Password",
                  style: GoogleFonts.inter(
                      fontSize: 14.0,
                      color: ColorConstants.black,
                      fontWeight: FontWeight.bold),
                ),
                const CustomTextFormField(hintText: "Enter Password"),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Your Password?",
                        style: GoogleFonts.inter(
                            fontSize: 12.0,
                            color: ColorConstants.mainBlue,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: ColorConstants.mainBlue),
                    child: Center(
                        child: Text(
                      'Sign In',
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          color: ColorConstants.white,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: Text(
                    "Or Continue With",
                    style: GoogleFonts.inter(
                        fontSize: 14.0,
                        color: ColorConstants.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: size.width * 0.45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: ColorConstants.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Facebook",
                              style: GoogleFonts.inter(
                                  fontSize: 12.0,
                                  color: ColorConstants.mainBlue,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 50,
                      width: size.width * 0.45,
                      color: ColorConstants.white,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "You don't have account?",
                      style: GoogleFonts.inter(
                        fontSize: 14.0,
                        color: ColorConstants.black,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.inter(
                              fontSize: 14.0,
                              color: ColorConstants.mainBlue,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

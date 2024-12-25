import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine_gho/core/constants/constants.dart';
import 'package:medicine_gho/core/widgets/widgets.dart';
import 'package:medicine_gho/view/auth%20screen/register%20screen/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorConstants.mainBgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const LoginBanner(
              text: TextConstants.yourdoctor,
              icon: EneftyIcons.hospital_outline,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    TextConstants.email,
                    style: GoogleFonts.inter(
                        fontSize: 14.0,
                        color: ColorConstants.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const CustomTextFormField(hintText: TextConstants.enteremail),
                  const SizedBox(height: 16),
                  Text(
                    TextConstants.password,
                    style: GoogleFonts.inter(
                        fontSize: 14.0,
                        color: ColorConstants.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const CustomTextFormField(
                    hintText: TextConstants.enterpassword,
                    isPasswordField: true,
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          TextConstants.forgotpassword,
                          style: GoogleFonts.inter(
                              fontSize: 12.0,
                              color: ColorConstants.mainBlue,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                  const SizedBox(height: 10),
                  CustomElevatedButton(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterScreen()));
                    },
                    text: TextConstants.signin,
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Text(
                      TextConstants.continuewith,
                      style: GoogleFonts.inter(
                          fontSize: 14.0,
                          color: ColorConstants.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      SignInWithButton(
                        onTap: () {},
                        text: TextConstants.facebook,
                        imagePath: ImageConstants.facebook,
                      ),
                      const SizedBox(width: 10),
                      SignInWithButton(
                          onTap: () {},
                          text: TextConstants.google,
                          imagePath: ImageConstants.google),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        TextConstants.youdonthaveanaccount,
                        style: GoogleFonts.inter(
                          fontSize: 14.0,
                          color: ColorConstants.black,
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            TextConstants.signup,
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
      ),
    );
  }
}

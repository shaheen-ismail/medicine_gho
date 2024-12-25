import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine_gho/controller/auth_provider.dart';
import 'package:medicine_gho/core/constants/constants.dart';
import 'package:medicine_gho/core/widgets/widgets.dart';
import 'package:medicine_gho/view/auth%20screen/register%20screen/register_screen.dart';
import 'package:medicine_gho/view/bottom%20nav/bottom_nav.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorConstants.mainBgColor,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const LoginBanner(
                text: TextConstants.yourdoctor,
                icon: EneftyIcons.hospital_outline,
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Consumer<AuthProvider>(
                  builder: (context, value, child) {
                    return Column(
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
                        CustomTextFormField(
                          hintText: TextConstants.enteremail,
                          controller: _emailController,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          TextConstants.password,
                          style: GoogleFonts.inter(
                              fontSize: 14.0,
                              color: ColorConstants.black,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        CustomTextFormField(
                          hintText: TextConstants.enterpassword,
                          isPasswordField: true,
                          controller: _passwordController,
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
                        value.isLoading
                            ? const Center(child: CircularProgressIndicator())
                            : CustomElevatedButton(
                                onTap: () async {
                                  if (_formKey.currentState!.validate()) {
                                    final email = _emailController.text;
                                    final password = _passwordController.text;

                                    bool isSuccess =
                                        await value.login(email, password);

                                    if (isSuccess) {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              BottomNavBarExample(),
                                        ),
                                      );
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                        content: Text("Login Failed"),
                                        backgroundColor: Colors.red,
                                      ));
                                    }
                                  }
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
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const RegisterScreen()));
                                },
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
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

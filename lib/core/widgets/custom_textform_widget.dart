import 'package:flutter/material.dart';
import 'package:medicine_gho/controller/common_controller.dart';
import 'package:provider/provider.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final bool isPasswordField;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.isPasswordField = false,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<CommonProvider>(
      builder: (context, passwordVisibilityProvider, child) {
        return TextFormField(
          obscureText:
              isPasswordField ? passwordVisibilityProvider.isObscured : false,
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            fillColor: Colors.white,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: const BorderSide(
                color: Colors.white10,
                width: 1.0,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: const BorderSide(
                color: Colors.white10,
                width: 1.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: const BorderSide(
                color: Colors.blue,
                width: 1.0,
              ),
            ),
            suffixIcon: isPasswordField
                ? IconButton(
                    icon: Icon(
                      passwordVisibilityProvider.isObscured
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                    onPressed: passwordVisibilityProvider.toggleVisibility,
                  )
                : null,
          ),
          style: const TextStyle(color: Colors.black),
        );
      },
    );
  }
}

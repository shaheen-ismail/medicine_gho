import 'package:flutter/material.dart';
import 'package:medicine_gho/view/auth%20screen/login%20screen/login_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider with ChangeNotifier {
  bool isLoading = false;

  Future<bool> login(String email, String password) async {
    isLoading = true;
    notifyListeners();

    try {
      final response = await AuthService().login(email, password);

      if (response != null) {
        isLoading = false;
        notifyListeners();
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('access_token', response.accessToken ?? "");
        return true;
      } else {
        throw Exception("Login failed");
      }
    } catch (e) {
      isLoading = false;
      notifyListeners();
      return false;
    }
  }
}

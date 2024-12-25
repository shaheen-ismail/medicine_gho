import 'package:flutter/material.dart';

class SplashProvider with ChangeNotifier {
  bool _isInitialised = false;
  bool get isInitialised => _isInitialised;

  Future<void> initializeApp() async {
    await Future.delayed(const Duration(seconds: 3));

    _isInitialised = true;
    notifyListeners();
  }
}

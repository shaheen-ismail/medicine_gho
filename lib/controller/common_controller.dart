import 'package:flutter/material.dart';

class CommonProvider extends ChangeNotifier {
  bool _isObscured = true;

  bool get isObscured => _isObscured;

  void toggleVisibility() {
    _isObscured = !_isObscured;
    notifyListeners();
  }

  bool _isLiked = false;

  bool get isLiked => _isLiked;

  void toggleLike() {
    _isLiked = !_isLiked;
    notifyListeners();
  }

// bottom
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void updateSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
  // bottom
}

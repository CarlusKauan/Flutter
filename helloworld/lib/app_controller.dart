import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController();

  bool IsDartTheme = false;
  changeTheme() {
    IsDartTheme = !IsDartTheme;
    notifyListeners();
  }
}

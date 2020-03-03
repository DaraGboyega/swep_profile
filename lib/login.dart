import 'package:flutter/material.dart';

class LoginModel with ChangeNotifier{
  final loginController = TextEditingController();
  notifyListeners();
}

class UpdateNo extends LoginModel{
  String loginKey = '';

  void updateNo() {
    var value = loginController.text;
    loginKey = value;
    notifyListeners();
  }
}
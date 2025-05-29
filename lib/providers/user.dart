import 'package:flutter/cupertino.dart';

class UserProvider extends ChangeNotifier {
  String _name = "";
  String _email = "";

  void setName(String val) {
    _name = val;
    notifyListeners();
  }

  void setEmail(String val) {
    _email = val;
    notifyListeners();
  }

  String getName() => _name;

  String getEmail() => _email;
}

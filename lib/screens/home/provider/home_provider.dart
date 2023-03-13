import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier
{
  bool s1 = true;
  bool s2 = false;
  bool s3 = true;

  void change1(bool value) {
    s1=value;
    notifyListeners();
  }
  void change2(bool value) {
    s2=value;
    notifyListeners();
  }

  void change3(bool value) {
    s3=value;
    notifyListeners();
  }
}
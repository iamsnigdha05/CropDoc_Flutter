import 'package:flutter/material.dart';


class NavigationProvider extends ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  set currentIndex(int v) {
    if (v == _currentIndex) return;
    _currentIndex = v;
    notifyListeners();
  }
}
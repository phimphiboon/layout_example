import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'history_screen.dart';
import 'screen/main_screen.dart';

class RouteGenerator {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return CupertinoPageRoute(
          builder: (context) => MainScreen(),
        );
        break;
      case '/history':
        return CupertinoPageRoute(
          builder: (context) => HistoryScreen(),
        );
        break;
      default:
        return CupertinoPageRoute(
          builder: (context) => MainScreen(),
        );
    }
  }
}

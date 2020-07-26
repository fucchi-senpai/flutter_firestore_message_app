import 'package:flutter/material.dart';

class PageTransitionUtil {

  static void next(BuildContext context, {Widget nextScreen}) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => nextScreen,
      ),
    );
  }

  static void back(BuildContext context) {
    Navigator.pop(context);
  }

}
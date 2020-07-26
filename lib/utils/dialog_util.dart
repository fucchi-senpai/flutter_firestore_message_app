import 'package:flutter/material.dart';

class DialogUtil {
  static void showSingleButtonDialog(
      {BuildContext context,
      @required String title,
      @required String message,
      String buttonTitle,
      @required Function onPressed}) {

    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            FlatButton(
              onPressed: onPressed,
              child: Text(buttonTitle == null ? 'OK' : buttonTitle),
            )
          ],
        );
      },
    );
  }
}

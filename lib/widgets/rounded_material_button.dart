import 'package:flutter/material.dart';

class RoundedMaterialButton extends StatelessWidget {
  final String buttonTitle;
  final Color buttonTitleColor;
  final Color backgroundColor;
  final Function onPressed;

  const RoundedMaterialButton({
    @required this.buttonTitle,
    @required this.onPressed,
    this.backgroundColor,
    this.buttonTitleColor,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 5.0,
      color: this.backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      onPressed: this.onPressed,
      child: Text(
        this.buttonTitle,
        style:
            TextStyle(color: buttonTitleColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}

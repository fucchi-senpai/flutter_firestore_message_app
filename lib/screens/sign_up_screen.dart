import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_firestore_message_app/screens/home_screen.dart';
import 'package:flutter_firestore_message_app/screens/sign_in_screen.dart';
import 'package:flutter_firestore_message_app/utils/constants.dart';
import 'package:flutter_firestore_message_app/utils/dialog_util.dart';
import 'package:flutter_firestore_message_app/utils/page_transition_util.dart';
import 'package:flutter_firestore_message_app/widgets/rounded_material_button.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String _mInputEmail;
  String _mInputPassword;
  String _mInputConfirmPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  kSingUpScreenMainText,
                  style: kMainTextStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 50.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 20.0,
                  ),
                  child: TextField(
                    decoration: kTextFieldStyle.copyWith(
                      hintText: kHintTextEmail,
                      prefixIcon: Icon(Icons.person_outline),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (String value) {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 20.0,
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: kTextFieldStyle.copyWith(
                      hintText: kHintTextPassword,
                      prefixIcon: Icon(Icons.lock_outline),
                    ),
                    onChanged: (String value) {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 20.0,
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: kTextFieldStyle.copyWith(
                      hintText: kHintTextConfirmPassword,
                      prefixIcon: Icon(Icons.lock_outline),
                    ),
                    onChanged: (String value) {},
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
                    child: RoundedMaterialButton(
                      buttonTitle: kSignUp,
                      onPressed: () {
                        DialogUtil.showSingleButtonDialog(
                            context: context,
                            title: kSignUpSuccessfulMainText,
                            message: kSingUpSuccessfulSubText,
                            buttonTitle: kOk,
                            onPressed: () {
                              // For dismiss dialog when back screen.
                              PageTransitionUtil.back(context);
                              // Actual behavior
                              PageTransitionUtil.next(context, nextScreen: SignInScreen());
                            });
                      },
                      backgroundColor: Colors.teal,
                      buttonTitleColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

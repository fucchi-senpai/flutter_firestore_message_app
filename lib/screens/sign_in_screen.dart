import 'package:flutter/material.dart';
import 'package:flutter_firestore_message_app/screens/home_screen.dart';
import 'package:flutter_firestore_message_app/utils/constants.dart';
import 'package:flutter_firestore_message_app/utils/page_transition_util.dart';
import 'package:flutter_firestore_message_app/widgets/rounded_material_button.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  String _mInputEmail;
  String _mInputPassword;

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
                  kSignInScreenMainText,
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
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: RoundedMaterialButton(
                      buttonTitle: kSignIn,
                      onPressed: () {
                        PageTransitionUtil.next(context, nextScreen: HomeScreen());
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

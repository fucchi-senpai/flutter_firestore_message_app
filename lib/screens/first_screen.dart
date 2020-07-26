import 'package:flutter/material.dart';
import 'package:flutter_firestore_message_app/screens/sign_in_screen.dart';
import 'package:flutter_firestore_message_app/screens/sign_up_screen.dart';
import 'package:flutter_firestore_message_app/utils/constants.dart';
import 'package:flutter_firestore_message_app/utils/page_transition_util.dart';
import 'package:flutter_firestore_message_app/widgets/rounded_material_button.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.teal[100],
                Colors.teal[200],
                Colors.teal[300],
                Colors.teal[400],
                Colors.teal,
                Colors.teal[600],
              ]
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                child: Icon(
                  Icons.chat,
                  size: 150.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 35.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 25.0),
                child: RoundedMaterialButton(
                  buttonTitle: kSignUp,
                  onPressed: () {
                    PageTransitionUtil.next(context, nextScreen: SignUpScreen());
                  },
                  backgroundColor: Colors.white,
                  buttonTitleColor: Colors.teal,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 25.0),
                child: RoundedMaterialButton(
                  buttonTitle: kSignIn,
                  onPressed: () {
                    PageTransitionUtil.next(context, nextScreen: SignInScreen());
                  },
                  backgroundColor: Colors.teal[900],
                  buttonTitleColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

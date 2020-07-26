import 'package:flutter/material.dart';

// Common text
const String kAppTitle = 'Chat App';
const String kSignUp = 'Sign up';
const String kSignIn = 'Sign in';
const String kHintTextEmail = 'Email';
const String kHintTextPassword = 'Password';
const String kHintTextConfirmPassword = 'Confirm Password';

// For Sign up screen
const String kSingUpScreenMainText = 'Create Account';
const String kSignInScreenMainText = 'Welcome back!';
const String kSignUpSuccessfulMainText = 'Successful !';
const String kSingUpSuccessfulSubText = 'Created your account.';

// For Dialog button text
const String kOk = 'OK';

const InputDecoration kTextFieldStyle = InputDecoration(
  hintText: 'Hint Text',
  prefixIcon: Icon(Icons.person),
  fillColor: Colors.white24,
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black26, width: 1.0),
    borderRadius: BorderRadius.all(
      Radius.circular(15.0),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black26, width: 1.0),
    borderRadius: BorderRadius.all(
      Radius.circular(15.0),
    ),
  ),
);

const kMainTextStyle = TextStyle(
  color: Colors.black87,
  fontSize: 35.0,
  fontWeight: FontWeight.bold,
);
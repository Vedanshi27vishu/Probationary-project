import 'package:flutter/material.dart';
import 'package:provision/forgetpassword.dart';
import 'package:provision/homescreen.dart';
import 'package:provision/reset_password.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResetPassword(),
    );
  }
}
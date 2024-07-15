import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provision/Widget/screen_widget.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(title: "Forgot Password", buttontext: "Reset Password", subtitle: "Enter your contact number to reset", subtitle2: "your password");
  }
}


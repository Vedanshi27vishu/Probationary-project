import 'package:flutter/material.dart';
import 'package:provision/Widget/screen_widget.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(title: "Reset Password", buttontext:"Reset Password", subtitle: "Enter your new password",label1: "Password",);
  }
}
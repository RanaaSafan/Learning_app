import 'package:education_app/features/authentication/representation/widgets/sign_in/sign_in_body.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body:  SignInBody(),
        );
  }
}

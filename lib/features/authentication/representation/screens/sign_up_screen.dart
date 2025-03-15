import 'package:education_app/features/authentication/representation/widgets/sign_up/sign_up_body.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SignUpBody(),
    );
  }
}

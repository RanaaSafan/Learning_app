import 'package:education_app/features/authentication/representation/widgets/sign_up/sign_up_header.dart';
import 'package:education_app/features/authentication/representation/widgets/sign_up/sign_with_other.dart';
import 'package:flutter/material.dart';
import 'package:education_app/features/authentication/representation/widgets/sign_up/sign_up_form.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        child:
        Column(
          children: [
            SignUpHeader(),
            SignUpForm(),
            SignWithOther(),
          ],
        ),
    );
  }
}

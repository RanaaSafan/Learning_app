import 'package:education_app/features/authentication/representation/widgets/sign_in/sign_in_form.dart';
import 'package:education_app/features/authentication/representation/widgets/sign_in/sign_in_header.dart';
import 'package:education_app/features/authentication/representation/widgets/sign_in/sign_inwith_other.dart';
import 'package:flutter/material.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        child:
        Column(
          children: [
            SignInHeader(),
            SignInForm(),
            SignInwithOther(),
          ],
        ),
    );
  }
}

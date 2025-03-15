import 'package:education_app/core/constants/app_padding.dart';
import 'package:education_app/core/constants/app_sized_box.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/app_text_style.dart';

class SignInHeader extends StatelessWidget {
  const SignInHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: AppPadding.padding16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AppSizedBox.sizeH40,
          Center(child: Image.asset("assets/images/LOGO.png")),
          AppSizedBox.sizeH40,
          Text(
            "Let’s Sign In.!",
            style: AppTextStyle.titOnboardingStyle,
          ),
          AppSizedBox.sizeH10,
          Text(
            "Login to Your Account to Continue your Courses",
            style: AppTextStyle.desOnboardingStyle,
          ),
        ],
      ),
    );
  }
}

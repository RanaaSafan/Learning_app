import 'package:education_app/core/constants/app_padding.dart';
import 'package:education_app/core/constants/app_sized_box.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/app_text_style.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({super.key});

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
            "Getting Started.!",
            style: AppTextStyle.titOnboardingStyle,
          ),
          AppSizedBox.sizeH10,
          Text(
            "Create an Account to Continue your allCourses",
            style: AppTextStyle.desOnboardingStyle,
          ),
        ],
      ),
    );
  }
}

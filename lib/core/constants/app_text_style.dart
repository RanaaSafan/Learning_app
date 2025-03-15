import 'package:education_app/core/constants/app_color.dart';
import 'package:education_app/core/constants/app_font.dart';
import 'package:education_app/core/constants/app_size.dart';
import 'package:flutter/material.dart';

class AppTextStyle {

  static TextStyle titOnboardingStyle = TextStyle(
      color: AppColor.titleOnboarding,
      fontSize: AppSize.titleOnboarding,
      fontWeight: AppFont.titleOnboarding);

  static TextStyle desOnboardingStyle = TextStyle(
      color: AppColor.desOnboarding,
      fontSize: AppSize.desOnboarding,
      fontWeight: AppFont.desOnboarding);

  static TextStyle nextButtonStyle = TextStyle(
      color: AppColor.white,
      fontSize: AppSize.sizeButton,
      fontWeight: AppFont.desOnboarding);


  static TextStyle forgetStyle = TextStyle(
      color: AppColor.titleOnboarding,
      fontSize: AppSize.desOnboarding,
      fontWeight: AppFont.forget

  );


}

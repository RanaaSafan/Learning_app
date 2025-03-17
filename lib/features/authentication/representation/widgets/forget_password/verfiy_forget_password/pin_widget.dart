import 'package:education_app/core/constants/app_color.dart';
import 'package:education_app/core/constants/app_font.dart';
import 'package:education_app/core/constants/app_padding.dart';
import 'package:education_app/core/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class PinCodeWidget extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onCompleted;

  const PinCodeWidget({
    Key? key,
    required this.controller,
    required this.onCompleted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Pinput(
      controller: controller,
      length: 4,
      obscureText: true,
      defaultPinTheme: PinTheme(
        padding: AppPadding.padding8,
        width: 60.w,
        height: 70.h,
        textStyle: TextStyle(fontSize: AppSize.titleOnboarding, fontWeight: AppFont.desOnboarding),
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: Colors.grey,width: 0.3.w),
        ),
      ),
      onCompleted: onCompleted,
    );
  }
}

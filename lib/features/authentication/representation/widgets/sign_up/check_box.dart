import 'package:education_app/core/constants/app_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/constants/app_text_style.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:AppPadding.padding16,
      child: Row(
        children: [
          Container(
            width: 30.w,
            height: 30.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isChecked ? AppColor.green : Colors.transparent,
              border: Border.all(color: AppColor.green, width: 2.w),
            ),
            child: Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
              shape: const CircleBorder(),
              checkColor: AppColor.green,
              activeColor: AppColor.white,
              side:  BorderSide(color: AppColor.backApp, width: 2.w),
            ),
          ),
          AppSizedBox.size5,
          Text("I agree to the terms & conditions",style: AppTextStyle.desOnboardingStyle),
        ],
      ),
    );
  }
}

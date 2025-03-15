import 'package:education_app/core/constants/app_padding.dart';
import 'package:education_app/core/constants/app_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_text_style.dart';
import '../../../../../core/router/routers.dart';

class CheckBoxIn extends StatefulWidget {
  const CheckBoxIn({super.key});

  @override
  State<CheckBoxIn> createState() => _CheckBoxInState();
}

class _CheckBoxInState extends State<CheckBoxIn> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:AppPadding.padding16,
      child: Row(
        children: [
          Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
            checkColor: AppColor.white,
            activeColor: AppColor.green,
            side:  BorderSide(color: AppColor.green, width: 2.w),
          ),
          AppSizedBox.size5,
          Text("I agree to the terms & conditions",style: AppTextStyle.desOnboardingStyle),
          const Spacer(),
          InkWell(
              onTap: (){
                GoRouter.of(context).push(Routers.forgetScreen.name);
              },
              child: Text("Forget Password?",style: AppTextStyle.desOnboardingStyle)),

        ],
      ),
    );
  }
}

import 'package:education_app/core/constants/app_color.dart';
import 'package:education_app/core/constants/app_padding.dart';
import 'package:education_app/core/constants/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sized_box.dart';

class MentorCard extends StatelessWidget {
  const MentorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return
        Container(
             width: 60.w,
             height: 120.h,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(25.r),
             ),
          child: Column(
            children: [
             Image.asset("assets/images/Group 10.png",width: 60.w,height: 60.h,fit: BoxFit.contain,),
              AppSizedBox.sizeH10,
              Text("Rana",style: AppTextStyle.desOnboardingStyle,),
            ],
          ),
    );
  }
}

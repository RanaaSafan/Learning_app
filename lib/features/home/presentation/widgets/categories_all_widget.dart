import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sized_box.dart';
import '../../../../core/constants/app_text_style.dart';

class CategoriesAllWidget extends StatelessWidget {
  const CategoriesAllWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.w,
      height: 76.h,
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

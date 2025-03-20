import 'package:education_app/core/constants/app_padding.dart';
import 'package:education_app/core/constants/app_size.dart';
import 'package:education_app/core/constants/app_sized_box.dart';
import 'package:education_app/core/constants/app_text_style.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_color.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:AppPadding.padding8,
      child: Column(
        children: [
          Row(
            children: [
              Text("Hi, Rana",style: AppTextStyle.titOnboardingStyle,),
              const Spacer(),
              Icon(Icons.circle_notifications_outlined,color: AppColor.green,size: AppSize.titleOnboarding,)
            ],
          ),
          AppSizedBox.sizeH10,

          Row(
            children: [
              Text("What Would you like to learn Today? Search Below.",style: AppTextStyle.desOnboardingStyle,),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:education_app/core/constants/app_padding.dart';
import 'package:education_app/core/constants/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/constants/app_color.dart';
import '../../../../../../core/constants/app_sized_box.dart';
import '../../../../../../core/router/routers.dart';

class ContainerWay extends StatelessWidget {
  final String title;
  final String description;
  const ContainerWay({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: AppPadding.padding16,
      child: InkWell(
        onTap: (){
         GoRouter.of(context).push(Routers.verfiyForgetScreen.name);
        },
        child: Container(
          width: double.infinity,
          height: 105.h,
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(25.r),
          ),
          child: Padding(
            padding: AppPadding.padding16,
            child: Row(
              children: [
                const Icon(Icons.email_outlined,size: 30,),
                AppSizedBox.size15,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(title,style: AppTextStyle.desOnboardingStyle,),
                    AppSizedBox.sizeH10,
                    Text(description,style: AppTextStyle.forgetStyle,),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

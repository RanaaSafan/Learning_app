import 'package:education_app/core/constants/app_color.dart';
import 'package:education_app/core/constants/app_padding.dart';
import 'package:education_app/core/constants/app_size.dart';
import 'package:education_app/core/constants/app_sized_box.dart';
import 'package:education_app/core/constants/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_font.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 280.w,
        height: 300.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 280.w,
              height: 130,
              decoration: BoxDecoration(
                color: AppColor.black,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20.r),topRight: Radius.circular(20.r)),
              ),
            ),
            AppSizedBox.sizeH10,
            Row(
              children: [
                Text(
                  "Graphic Design",
                  style: TextStyle(
                      color: AppColor.orange,
                      fontWeight: AppFont.desOnboarding,
                      fontSize: AppSize.sizeButton),
                ),
                const Spacer(),
                Icon(
                  Icons.save_alt_sharp,
                  color: AppColor.green,
                  size: AppSize.sizeButton,
                ),
              ],
            ),
            AppSizedBox.sizeH10,
            Text(
              "Graphic Design Advanced",
              style: AppTextStyle.titOnboardingStyle,
            ),
            AppSizedBox.sizeH10,
            Row(
              children: [
                Text(
                  "850/-",
                  style: TextStyle(
                      color: AppColor.blue,
                      fontSize: AppSize.desOnboarding,
                      fontWeight: AppFont.titleOnboarding),
                ),
                Text(
                  "  |  ",
                  style: TextStyle(
                      color: AppColor.black,
                      fontSize: AppSize.desOnboarding,
                      fontWeight: AppFont.titleOnboarding),
                ),
                Icon(
                  Icons.star,
                  color: AppColor.yellow,
                  size: AppSize.sizeButton,
                ),
                Text(
                  "4.2",
                  style: TextStyle(
                      color: AppColor.black,
                      fontSize: AppSize.desOnboarding,
                      fontWeight: AppFont.titleOnboarding),
                ),
                AppSizedBox.size15,
                Text(
                  "  | 7850 Std",
                  style: TextStyle(
                      color: AppColor.black,
                      fontSize: AppSize.desOnboarding,
                      fontWeight: AppFont.titleOnboarding),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:education_app/core/constants/app_color.dart';
import 'package:education_app/core/constants/app_font.dart';
import 'package:education_app/core/constants/app_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_padding.dart';
import '../../../../core/constants/app_size.dart';

class CardOffer extends StatelessWidget {
  const CardOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.blue,
      shadowColor: AppColor.grey,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      child: Padding(
        padding: AppPadding.padding16,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "25% Off",
                  style: TextStyle(
                      color: AppColor.white,
                      fontSize: AppSize.desOnboarding,
                      fontWeight: AppFont.desOnboarding),
                ),
              ],
            ),
            AppSizedBox.sizeH5,
            Row(
              children: [
                Text(
                  "Today’s Special",
                  style: TextStyle(
                      color: AppColor.white,
                      fontSize: AppSize.titleOnboarding,
                      fontWeight: AppFont.titleOnboarding),
                ),
              ],
            ),
            AppSizedBox.sizeH10,
            Row(
              children: [
                Text(
                  "Get a Discount for Every Course Order only Valid for Today.!",
                  style: TextStyle(
                      color: AppColor.white,
                      fontSize: AppSize.desOnboarding,
                      fontWeight: AppFont.desOnboarding),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

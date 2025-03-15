import 'package:education_app/core/constants/app_color.dart';
import 'package:education_app/core/constants/app_sized_box.dart';
import 'package:education_app/core/constants/app_text_style.dart';
import 'package:flutter/material.dart';

class SignWith extends StatelessWidget {
  final String image;
  final String title;
  const SignWith({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
           CircleAvatar(
                      backgroundColor: AppColor.nextbutton,
                      child: Image.asset(image,width: 40,height: 40,),
           ),
        AppSizedBox.size5,
        Text(title,style: AppTextStyle.desOnboardingStyle,),
      ],
    );
  }
}

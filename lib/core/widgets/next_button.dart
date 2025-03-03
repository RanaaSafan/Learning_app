import 'package:education_app/core/constants/app_color.dart';
import 'package:education_app/core/constants/app_text_style.dart';
import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  final double buttonWidth;
  final String title;
  const NextButton({super.key, required this.title, required this.buttonWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      height: 60,
      decoration: BoxDecoration(
        color: AppColor.blue,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
              child: Text(
            title,
            style: AppTextStyle.nextButtonStyle,
          )),
          const Spacer(),
          const Icon(
            Icons.arrow_circle_right_rounded,
            size: 48,
            color: AppColor.white,
          ),
        ],
      ),
    );
  }
}

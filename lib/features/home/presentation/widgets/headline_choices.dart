import 'package:flutter/material.dart';

import '../../../../core/constants/app_color.dart';
import '../../../../core/constants/app_sized_box.dart';
import '../../../../core/constants/app_text_style.dart';

class HeadlineChoices extends StatefulWidget {
  final String title;
  const HeadlineChoices({super.key, required this.title});

  @override
  State<HeadlineChoices> createState() => _HeadlineChoicesState();
}

class _HeadlineChoicesState extends State<HeadlineChoices> {
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, // توزيع العناصر بالتساوي
      children: [
        Text(
          widget.title,
          style: AppTextStyle.titOnboardingStyle, // التأكد من وجود هذا الـ Style
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            // يمكنك إضافة حدث عند الضغط على "See All" إذا أردت
          },
          child: const Text(
            "See All >",
            style: TextStyle(
              color: AppColor.blue, // التأكد من وجود هذا اللون في AppColor
            ),
          ),
        ),
      ],
    );
  }
}

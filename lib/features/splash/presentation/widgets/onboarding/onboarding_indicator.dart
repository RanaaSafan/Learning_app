import 'package:flutter/material.dart';

import '../../../../../core/constants/app_color.dart';

class OnboardingIndicator extends StatelessWidget {
  final int currentIndex;
  final int totalPages;

  const OnboardingIndicator({
    Key? key,
    required this.currentIndex,
    this.totalPages = 3, // الافتراضي 3 صفحات
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: 20,
      right: 0,
      child: Row(
        children: List.generate(
          totalPages,
              (index) => Container(
            margin: const EdgeInsets.only(right: 5),
            width: currentIndex == index ? 20 : 10,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: currentIndex == index ? AppColor.blue : AppColor.nextbutton,
            ),
          ),
        ),
      ),
    );
  }
}

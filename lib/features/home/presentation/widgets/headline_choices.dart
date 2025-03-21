import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_color.dart';
import '../../../../core/constants/app_sized_box.dart';
import '../../../../core/constants/app_text_style.dart';
import '../../../../core/router/routers.dart';

class HeadlineChoices extends StatefulWidget {
  final String title;
  const HeadlineChoices({super.key, required this.title});

  @override
  State<HeadlineChoices> createState() => _HeadlineChoicesState();
}

class _HeadlineChoicesState extends State<HeadlineChoices> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceBetween, // توزيع العناصر بالتساوي
      children: [
        Text(
          widget.title,
          style:
              AppTextStyle.titOnboardingStyle, // التأكد من وجود هذا الـ Style
        ),
        const Spacer(),
        InkWell(
          onTap: () {
            print('Tapped on: ${widget.title}');
            if (widget.title == 'category') {
              GoRouter.of(context).push(Routers.categoriesScreen.name);
            }else if(widget.title == 'Popular Courses'){

            }else if(widget.title == 'Top Mentor'){

            }
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

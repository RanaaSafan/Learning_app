import 'package:education_app/core/constants/app_padding.dart';
import 'package:education_app/features/home/presentation/widgets/course_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoursesCardView extends StatelessWidget {
  const CoursesCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h, // تأكد من تحديد ارتفاع مناسب
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5, // عدّل حسب عدد الكورسات المتاحة
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CourseCard(), // يفترض أن CourseCard عنصر واحد فقط
          );
        },
      ),
    );
  }
}

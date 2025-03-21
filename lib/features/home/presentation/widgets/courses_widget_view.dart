import 'package:flutter/material.dart';

import 'courses_widget.dart';

class CoursesWidgetView extends StatelessWidget {
  const CoursesWidgetView({super.key});

  // popular courses
  @override
  Widget build(BuildContext context) {
    // تمرير القائمة من الـ parent إلى الـ ChipWidget
    final List<String> chipLabels = [
      'All',
      '3D Design',
      'Graphic Design',
      'Web Development',
      'SEO & Marketing',
      'Finance & Accounting',
      'Personal Development',
      'Office Productivity',
      'HR Management',
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // تمكين التمرير الأفقي
      child:CoursesWidget(chipLabels: chipLabels), // تمرير البيانات إلى الـ ChipWidget
    );
  }
}
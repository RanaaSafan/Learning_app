import 'package:education_app/core/constants/app_sized_box.dart';
import 'package:education_app/core/constants/app_text_style.dart';
import 'package:education_app/features/home/presentation/widgets/category_widget.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_color.dart';

class CategoryWidgetView extends StatelessWidget {
  const CategoryWidgetView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> textLabels = [
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
      child: CategoryWidget(textLabels: textLabels),
    );
  }
}

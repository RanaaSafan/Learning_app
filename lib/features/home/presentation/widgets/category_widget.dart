import 'package:education_app/core/constants/app_color.dart';
import 'package:education_app/core/constants/app_font.dart';
import 'package:education_app/core/constants/app_size.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  final List<String> textLabels;

  const CategoryWidget({super.key, required this.textLabels});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  int? _selectedIndex; // لحفظ الفهرس الذي تم اختياره

  // دالة لتحديث الفهرس عند الضغط
  void _onTextTapped(int index) {
    setState(() {
      _selectedIndex = _selectedIndex == index ? null : index; // تغيير التحديد
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        widget.textLabels.length,
            (index) => Padding(
          padding: const EdgeInsets.only(right: 16.0), // مسافة بين النصوص
          child: GestureDetector(
            onTap: () => _onTextTapped(index), // عند الضغط على النص
            child: Text(
              widget.textLabels[index],
              style: TextStyle(
                color: _selectedIndex == index ? AppColor.blue : AppColor.desOnboarding, // تغيير اللون
                fontWeight: AppFont.desOnboarding,
                fontSize: AppSize.desOnboarding,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:education_app/core/constants/app_color.dart';
import 'package:flutter/material.dart';

class ChipWidget extends StatefulWidget {
  final List<String> chipLabels; // تمرير قائمة النصوص من الـ parent

  const ChipWidget({super.key, required this.chipLabels});

  @override
  _ChipWidgetState createState() => _ChipWidgetState();
}

class _ChipWidgetState extends State<ChipWidget> {
  int? _selectedIndex;

  // دالة لتحديث القيمة عند الضغط على Chip
  void _onChipTapped(int index) {
    setState(() {
      _selectedIndex = (_selectedIndex == index) ? null : index;
    });
  }

  // دالة لإنشاء ChoiceChip
  Widget _buildChoiceChip(int index) {
    bool isSelected = _selectedIndex == index;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ChoiceChip(
        label: Text(
          widget.chipLabels[index], // استخدام النص من قائمة الـ parent
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black87,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        selected: isSelected,
        onSelected: (_) => _onChipTapped(index),
        selectedColor: Color(0xFF167F71),
        backgroundColor: Color(0xFFE8F1FF),
        shape: StadiumBorder(),
        elevation: 4.0,
        shadowColor: Colors.green.shade300,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: List.generate(
          widget.chipLabels.length,
              (index) => _buildChoiceChip(index),
        ),
      ),
    );
  }
}
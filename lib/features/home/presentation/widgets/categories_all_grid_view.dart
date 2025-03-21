import 'package:education_app/features/home/presentation/widgets/categories_all_widget.dart';
import 'package:flutter/material.dart';

class CategoriesAllGridView extends StatefulWidget {
  const CategoriesAllGridView({super.key});

  @override
  State<CategoriesAllGridView> createState() => _CategoriesAllGridViewState();
}

class _CategoriesAllGridViewState extends State<CategoriesAllGridView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (context, index) {
          return CategoriesAllWidget();
        });
  }
}

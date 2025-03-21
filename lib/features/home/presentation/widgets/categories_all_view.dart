import 'package:education_app/features/home/presentation/widgets/categories_all_grid_view.dart';
import 'package:flutter/material.dart';

import 'home_search.dart';


class CategoriesAllView extends StatelessWidget {
  const CategoriesAllView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeSearch(),
        CategoriesAllGridView(),
      ],
    );
  }
}

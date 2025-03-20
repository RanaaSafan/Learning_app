import 'package:education_app/core/constants/app_padding.dart';
import 'package:education_app/core/constants/app_sized_box.dart';
import 'package:education_app/features/home/presentation/widgets/card_offer_view.dart';
import 'package:education_app/features/home/presentation/widgets/category_widget_view.dart';
import 'package:education_app/features/home/presentation/widgets/chip_widget_view.dart';
import 'package:education_app/features/home/presentation/widgets/headline_choices.dart';
import 'package:education_app/features/home/presentation/widgets/home_header.dart';
import 'package:education_app/features/home/presentation/widgets/home_search.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_color.dart';
import '../../../../core/constants/app_text_style.dart';
import 'chip_widget.dart';


class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding:AppPadding.padding16,
        children:  [
          const HomeHeader(),
          const  HomeSearch(),
          const CardOfferView(),
          AppSizedBox.sizeH10,
          const HeadlineChoices(title: "Category"),
          AppSizedBox.sizeH10,
          const CategoryWidgetView(),
          AppSizedBox.sizeH40,
          const HeadlineChoices(title: "Popular Courses "),
          AppSizedBox.sizeH10,
          const ChipWidgetView(),

        ],
      )
    );
  }
}

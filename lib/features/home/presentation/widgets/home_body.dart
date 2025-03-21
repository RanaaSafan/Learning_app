import 'package:education_app/core/constants/app_padding.dart';
import 'package:education_app/core/constants/app_sized_box.dart';
import 'package:education_app/features/home/presentation/widgets/card_offer_view.dart';
import 'package:education_app/features/home/presentation/widgets/category_widget_view.dart';
import 'package:education_app/features/home/presentation/widgets/courses_card_view.dart';
import 'package:education_app/features/home/presentation/widgets/courses_widget_view.dart';
import 'package:education_app/features/home/presentation/widgets/headline_choices.dart';
import 'package:education_app/features/home/presentation/widgets/home_header.dart';
import 'package:education_app/features/home/presentation/widgets/home_search.dart';
import 'package:flutter/material.dart';
import 'mentor_card_view.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: AppPadding.padding16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeHeader(),
              const HomeSearch(),
              AppSizedBox.sizeH20,
              const CardOfferView(),
              AppSizedBox.sizeH20,
               const HeadlineChoices(title: "Category"),
              AppSizedBox.sizeH20,
              const CategoryWidgetView(),
              AppSizedBox.sizeH40,
              const HeadlineChoices(title: "Popular Courses"),
              AppSizedBox.sizeH10,
              const CoursesWidgetView(),
              AppSizedBox.sizeH10,
              const CoursesCardView(),
              AppSizedBox.sizeH10,
              const HeadlineChoices(title: "Top Mentor"),
              AppSizedBox.sizeH20,
              const MentorCardView(),
            ],
          ),
        ),
      ),
    );
  }
}

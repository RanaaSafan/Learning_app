import 'package:education_app/core/constants/app_padding.dart';
import 'package:education_app/features/home/presentation/widgets/mentor_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MentorCardView extends StatefulWidget {
  const MentorCardView({super.key});

  @override
  State<MentorCardView> createState() => _MentorCardViewState();
}

class _MentorCardViewState extends State<MentorCardView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(

      height: 120.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context,index){
             return Padding(
               padding: const EdgeInsets.all(8.0),
               child: MentorCard(),
             );
      }),
    );
  }
}

import 'package:education_app/core/constants/app_padding.dart';
import 'package:education_app/features/home/presentation/widgets/card_offer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardOfferView extends StatefulWidget {
  const CardOfferView({super.key});

  @override
  State<CardOfferView> createState() => _CardOfferViewState();
}

class _CardOfferViewState extends State<CardOfferView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      height: 180.h,
      child: PageView(
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          CardOffer(),
          CardOffer(),
          CardOffer(),
          CardOffer(),
        ],
      ),
    );
  }
}

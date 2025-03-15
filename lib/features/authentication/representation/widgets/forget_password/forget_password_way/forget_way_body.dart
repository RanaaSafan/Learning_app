import 'package:education_app/features/authentication/representation/widgets/forget_password/forget_password_way/container_way.dart';
import 'package:education_app/features/authentication/representation/widgets/forget_password/forget_password_way/forget_way_header.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/constants/app_sized_box.dart';
import '../../../../../../core/constants/app_text_style.dart';

class ForgetWayBody extends StatelessWidget {
  const ForgetWayBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ForgetWayHeader(),
        AppSizedBox.sizeH40,
        Text("Select which contact details should we use to Reset Your Password",style: AppTextStyle.desOnboardingStyle,),
        AppSizedBox.sizeH40,
        const ContainerWay(title: "Via Email", description: "priscilla.frank26@gmail.com"),
        AppSizedBox.sizeH10,
        const ContainerWay(title: "Via SMS", description: "( +91 ) 958-894-5529"),
      ],
    );
  }
}

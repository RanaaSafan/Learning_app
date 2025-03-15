import 'package:education_app/core/constants/app_padding.dart';
import 'package:education_app/core/constants/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/constants/app_color.dart';

class ForgetWayHeader extends StatelessWidget {
  const ForgetWayHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
            padding: AppPadding.padding8,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  icon:  const Icon(Icons.arrow_back,color:  AppColor.titleOnboarding,),
                ),

                Text("Forget Password",style: AppTextStyle.titOnboardingStyle,),
              ],
            ),
          ),

      Image.asset("assets/images/Cool Kids Sitting.png",height: 280,width: 360,),
    ]
    
    );
  }
}

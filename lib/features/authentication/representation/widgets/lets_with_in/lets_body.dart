import 'package:education_app/core/constants/app_sized_box.dart';
import 'package:education_app/core/constants/app_text_style.dart';
import 'package:flutter/material.dart';

class LetsBody extends StatelessWidget {
  const LetsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Center(child: Image.asset("assets/images/Cool Kids On Wheels.png",width: 375,height: 264,fit: BoxFit.contain,)),
            AppSizedBox.sizeH20,
            Text("Lets You in",style: AppTextStyle.titOnboardingStyle,),
        ],
      ),
    );
  }
}

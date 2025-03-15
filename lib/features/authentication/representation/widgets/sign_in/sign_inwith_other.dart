import 'package:education_app/core/constants/app_sized_box.dart';
import 'package:education_app/features/authentication/representation/widgets/sign_with.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_text_style.dart';
import '../../../../../core/router/routers.dart';

class SignInwithOther extends StatelessWidget {
  const SignInwithOther({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppSizedBox.sizeH20,
        Text("Or Continue With",style: AppTextStyle.desOnboardingStyle),
        AppSizedBox.sizeH20,
         Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SignWith(image: "assets/images/Group 11.png", title: ""),
            AppSizedBox.size15,
            const SignWith(image: "assets/images/Fill 1.png", title: ""),
          ],
        ),
        AppSizedBox.sizeH20,
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Don't have an Account?",style: AppTextStyle.desOnboardingStyle,),
            AppSizedBox.size5,
            InkWell(
                onTap: (){
                  GoRouter.of(context).push(Routers.signUpScreen.name);
                },
                child: const Text("SIGN UP",style: TextStyle(color:AppColor.blue,),)),

          ],
        ),
        AppSizedBox.sizeH20,
      ],
    );
  }
}

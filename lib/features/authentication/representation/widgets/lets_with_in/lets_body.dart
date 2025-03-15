import 'package:education_app/core/constants/app_sized_box.dart';
import 'package:education_app/core/constants/app_text_style.dart';
import 'package:education_app/core/widgets/next_button.dart';
import 'package:education_app/features/authentication/representation/widgets/sign_with.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/router/routers.dart';

class LetsBody extends StatelessWidget {
  const LetsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Center(child: Image.asset("assets/images/Cool Kids On Wheels.png",width: 375,height: 264,fit: BoxFit.contain,)),
              AppSizedBox.sizeH20,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Let's You In",style: AppTextStyle.titOnboardingStyle,),
              ),
            const SignWith(image: "assets/images/Group 11.png", title: "Continue with Google"),
            AppSizedBox.sizeH20,
            const SignWith(image: "assets/images/Fill 1.png", title: "Continue with Apple"),
            AppSizedBox.sizeH20,
            Text("( or )",style: AppTextStyle.desOnboardingStyle,),
            AppSizedBox.sizeH20,
             NextButton(title: "Sign in with Your Account", buttonWidth: 350, onPressed: () {
               GoRouter.of(context).push(Routers.signInScreen.name);
             },),
            AppSizedBox.sizeH20,
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t have an Account?",style: AppTextStyle.desOnboardingStyle,),
                 AppSizedBox.size5,
                InkWell(
                    onTap: (){
                      GoRouter.of(context).push(Routers.signInScreen.name);
                    },
                    child: const Text("SIGN UP",style: TextStyle(color:AppColor.blue,),)),
      
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

import 'package:education_app/core/constants/app_color.dart';
import 'package:education_app/core/constants/app_font.dart';
import 'package:education_app/core/constants/app_padding.dart';
import 'package:education_app/core/constants/app_size.dart';
import 'package:education_app/core/constants/app_sized_box.dart';
import 'package:education_app/core/constants/app_text_style.dart';
import 'package:education_app/core/router/routers.dart';
import 'package:education_app/core/widgets/next_button.dart';
import 'package:education_app/features/authentication/representation/widgets/forget_password/verfiy_forget_password/message_timer.dart';
import 'package:education_app/features/authentication/representation/widgets/forget_password/verfiy_forget_password/pin_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class VerifyPasswordBody extends StatelessWidget {
  const VerifyPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MessageTimer(),
      child: Scaffold(
        appBar: AppBar(title: const Text("Forget Password"),backgroundColor: AppColor.white,),
        body: Consumer<MessageTimer>(
          builder: (context, viewModel, child) {
            return Padding(
              padding: AppPadding.padding16,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppSizedBox.sizeH40,
                  Text(
                    "Code has been Send to ( +1 ) ***-***-*529",
                    style: AppTextStyle.desOnboardingStyle,
                  ),
                  AppSizedBox.sizeH40,
                  PinCodeWidget(
                    controller: viewModel.pinController,
                    onCompleted: (pin) {
                      print('الكود المدخل: $pin');
                    },
                  ),
                  AppSizedBox.sizeH40,
                  Center(
                    child: viewModel.canResendCode
                        ? TextButton(
                            onPressed: viewModel.resetTimer,
                            child: const Text(
                              "Reset code ",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 16),
                            ),
                          )
                        : Text.rich(TextSpan(children: [
                            TextSpan(
                                text: "Resend Code in ",
                                style: AppTextStyle.desOnboardingStyle),
                            TextSpan(
                              text: "${viewModel.secondsRemaining}", // الرقم
                              style: TextStyle(
                                  fontSize: AppSize.desOnboarding,
                                  color: Colors.blue,
                                  fontWeight:
                                      AppFont.desOnboarding), // لون مختلف للرقم
                            ),
                            TextSpan(
                                text: " s",
                                style: AppTextStyle.desOnboardingStyle),
                          ])),
                  ),
                  AppSizedBox.sizeH40,
                  NextButton(
                      title: "Verify", buttonWidth: 360.w, onPressed: () {
                        GoRouter.of(context).push(Routers.newPasswordScreen.name);
                  })
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

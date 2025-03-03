import 'package:education_app/core/common_icon/app_icons.dart';
import 'package:education_app/features/splash/data/onboarding_model.dart';
import 'package:education_app/features/splash/presentation/widgets/onboarding/onboarding_indicator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/constants/app_size.dart';
import '../../../../../core/constants/app_sized_box.dart';
import '../../../../../core/constants/app_text_style.dart';
import '../../../../../core/router/routers.dart';
import '../../../../../core/widgets/next_button.dart';
import '../../../data/onboarding_data.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({Key? key}) : super(key: key);

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  final OnboardingData _listData = OnboardingData();
  late List<OnboardingModel> onboardingPages;


  final PageController _controller = PageController();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    onboardingPages = _listData.getOnboardingPages();
  }

  bool _isButtonPressedNext = false;
  void _nextPage() {
    if (_currentIndex < onboardingPages.length - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    } else {
     GoRouter.of(context).push(Routers.letsScreen.name);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _controller,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            itemCount: onboardingPages.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Row(
                      children: [
                        InkWell(
                            onTap: () {
                              GoRouter.of(context).push(Routers.letsScreen.name);
                            },
                            child: Text(
                              "Skip",
                              style: AppTextStyle.desOnboardingStyle,
                            )),
                      ],
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      onboardingPages[index].image,
                      height: AppSize.imageHeight,
                      width: AppSize.imageWidth,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.75,
                    left: 20,
                    right: 20,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          onboardingPages[index].title,
                          textAlign: TextAlign.center,
                          style: AppTextStyle.titOnboardingStyle,
                        ),
                        AppSizedBox.sizeH20,
                        Text(
                          onboardingPages[index].description,
                          textAlign: TextAlign.center,
                          style: AppTextStyle.desOnboardingStyle,
                        ),

                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            _isButtonPressedNext = true;
                          });
                          _nextPage();
                        },
                        child: _currentIndex == onboardingPages.length - 1
                            ? const NextButton(title: 'Get Start', buttonWidth: 200,)
                            : AppIcons.buttonIcon),
                  ),
                ],
              );
            },
          ),
          OnboardingIndicator(currentIndex: _currentIndex,),

        ],
      ),
    );
  }
}

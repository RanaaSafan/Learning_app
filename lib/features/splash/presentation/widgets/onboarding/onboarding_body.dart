import 'package:education_app/core/common_icon/app_icons.dart';
import 'package:education_app/features/splash/data/onboarding_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/constants/app_size.dart';
import '../../../../../core/constants/app_sized_box.dart';
import '../../../../../core/constants/app_text_style.dart';
import '../../../data/onboarding_data.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({Key? key}) : super(key: key);

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  final OnboardingData _listData = OnboardingData();
  late List<OnboardingModel> onboardingPages;

  final List<String> buttonTexts = ["Get Started", "Next", "Next"];

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
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => const SignInScreen()));
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
              String title = onboardingPages[index].title;
              List<String> words = title.split(" ");
              String lastWord = words.removeLast();
              return Stack(
                children: [
                  Image.asset(
                    onboardingPages[index].image,
                    height: AppSize.imageHeight,
                    width: AppSize.imageWidth,
                    fit: BoxFit.cover,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: AppPadding.paddings,
                        child: Text(
                          onboardingPages[index].description,
                          textAlign: TextAlign.center,
                          style:AppTextStyle.desOnboardingStyle,
                        ),
                      ),
                      AppSizedBox.size20,
                      Padding(
                        padding: AppPadding.paddings,
                        child: Text(
                          onboardingPages[index].description,
                          textAlign: TextAlign.center,
                          style:AppTextStyle.desOnboardingStyle,
                        ),
                      ),
                      // Padding(
                      //   padding: AppPadding.spaceButton,
                      //   child: CustomButton(
                      //       text: buttonTexts[_currentIndex],
                      //       onPressed: () {
                      //         setState(() {
                      //           _isButtonPressedNext = true;
                      //         });
                      //         _nextPage();
                      //       }),
                      // ),
                      //
                      InkWell(onTap: () {
                        setState(() {
                          _isButtonPressedNext = true;
                        });
                          _nextPage();
                        },
                           child: AppIcons.buttonIcon),
                    ],
                  ),
                ],
              );
            },
          ),
          Positioned(
            bottom: 80,
            left: 10,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                onboardingPages.length,
                (index) => Container(
                  margin: EdgeInsets.only(right: 5),
                  width: _currentIndex == index ? 25 : 5,
                  height: 6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: _currentIndex == index
                        ? const Color.fromRGBO(168, 80, 0, 1)
                        : Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

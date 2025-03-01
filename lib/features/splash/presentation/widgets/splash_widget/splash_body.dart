import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/router/routers.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).push(Routers.onboardingScreen.name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/01_LAUNCHING (1).jpg",
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
    );
  }
}

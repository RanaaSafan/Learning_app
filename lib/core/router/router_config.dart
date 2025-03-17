import 'package:education_app/core/router/routers.dart';
import 'package:education_app/features/authentication/representation/screens/forget_password_way_screen.dart';
import 'package:education_app/features/authentication/representation/screens/lets_screen.dart';
import 'package:education_app/features/authentication/representation/screens/new_password_screen.dart';
import 'package:education_app/features/authentication/representation/screens/sign_up_screen.dart';
import 'package:education_app/features/authentication/representation/screens/verfiy_password_screen.dart';
import 'package:education_app/features/splash/presentation/screens/onboading_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/authentication/representation/screens/sign_in_screen.dart';
import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/splash/presentation/screens/splash_screen.dart';

final router = GoRouter(
    initialLocation: Routers.splashScreen.path,
    routes: [
  GoRoute(
    path: Routers.splashScreen.path,
    name: Routers.splashScreen.name,
    pageBuilder: (context, state) {
      return const MaterialPage(child: SplashScreen());
    },
  ),

      GoRoute(
        path: Routers.onboardingScreen.path,
        name: Routers.onboardingScreen.name,
        pageBuilder: (context, state) {
          return const MaterialPage(child: OnboadingScreen());
        },
      ),

      GoRoute(
        path: Routers.letsScreen.path,
        name: Routers.letsScreen.name,
        pageBuilder: (context, state) {
          return const MaterialPage(child: LetsScreen());
        },
      ),

      GoRoute(
        path: Routers.signUpScreen.path,
        name: Routers.signUpScreen.name,
        pageBuilder: (context, state) {
          return const MaterialPage(child: SignUpScreen());
        },
      ),

      GoRoute(
        path: Routers.signInScreen.path,
        name: Routers.signInScreen.name,
        pageBuilder: (context, state) {
          return const MaterialPage(child: SignInScreen());
        },
      ),
      GoRoute(
        path: Routers.forgetScreen.path,
        name: Routers.forgetScreen.name,
        pageBuilder: (context, state) {
          return const MaterialPage(child: ForgetPasswordWayScreen());
        },
      ),

      GoRoute(
        path: Routers.HomeScreen.path,
        name: Routers.HomeScreen.name,
        pageBuilder: (context, state) {
          return const MaterialPage(child: HomeScreen());
        },
      ),


      GoRoute(
        path: Routers.verfiyForgetScreen.path,
        name: Routers.verfiyForgetScreen.name,
        pageBuilder: (context, state) {
          return const MaterialPage(child: VerfiyPasswordScreen());
        },
      ),

      GoRoute(
        path: Routers.newPasswordScreen.path,
        name: Routers.newPasswordScreen.name,
        pageBuilder: (context, state) {
          return const MaterialPage(child: NewPasswordScreen());
        },
      ),


    ]);

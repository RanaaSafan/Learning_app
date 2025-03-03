import 'package:education_app/core/router/routers.dart';
import 'package:education_app/features/authentication/representation/screens/lets_screen.dart';
import 'package:education_app/features/splash/presentation/screens/onboading_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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



    ]);

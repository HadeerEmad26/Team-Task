import 'package:flutter/material.dart';
import '../../features/screens/presentation/screens/forgetPassword_screen.dart';
import '../../features/screens/presentation/screens/omboarding_screen.dart';
import '../../features/screens/presentation/screens/splash_screen.dart';

class Routes {
  static const String intitlRoutes = '/';
  static const String onBoarding = '/onBoarding';
  static const String signIn = '/signIn';
  static const String signUp = '/signUp';
  static const String forgetPassword = '/forgetPassword';
}

class AppRoutes {
  static MaterialPageRoute generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.intitlRoutes:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case Routes.onBoarding:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );
      case Routes.forgetPassword:
        return MaterialPageRoute(
          builder: (context) => const ForgetPasswordScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text("No Founded Route PAge"),
            ),
          ),
        );
    }
  }
}

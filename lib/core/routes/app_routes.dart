import 'package:flutter/material.dart';
import 'package:team_taskk/features/auth/screens/presentation/signIn_screen.dart';
import '../../../features/auth/screens/presentation/forgetPassword_screen.dart';
import '../../../features/fresh_start/screens/presentation/screens/onboarding_screen.dart';
import '../../../features/fresh_start/screens/presentation/screens/splash_screen.dart';
import '../../features/auth/screens/presentation/signUp_screen.dart';

class Routes {
  static const String initialRoute = '/';
  static const String onBoarding = '/onBoarding';
  static const String signIn = '/signIn';
  static const String signUp = '/signUp';
  static const String forgetPassword = '/forgetPassword';

}

class AppRoutes {
  static MaterialPageRoute generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
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
      case Routes.signIn:
        return MaterialPageRoute(
          builder: (context) => const SignInScreen(),
        );
        case Routes.signUp:
          return MaterialPageRoute(
          builder: (context) => const SignUpScreen(),
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

import 'package:flutter/material.dart';
import 'package:team_taskk/core/utils/app_color.dart';
import 'package:team_taskk/core/utils/app_strings.dart';

import '../../../../core/utils/app_routes.dart';
import '../../../../core/utils/coomens.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigateAfterThreeSeconds();
    super.initState();
  }

  void navigateAfterThreeSeconds() {
    Future.delayed(const Duration(seconds: 3))
        .then((value) => navigate(context: context, route: Routes.onBoarding));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Text(AppStrings.chatApp,style: Theme.of(context).textTheme.displayMedium!.copyWith(
          color: AppColors.white,
        ),),
      ),
    );
  }
}

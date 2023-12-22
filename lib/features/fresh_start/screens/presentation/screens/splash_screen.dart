import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_taskk/core/database/cache/cacheKeys.dart';
import 'package:team_taskk/core/database/cache/cache_helper.dart';
import 'package:team_taskk/core/helpers/common_functions.dart';
import 'package:team_taskk/core/routes/app_routes.dart';
import 'package:team_taskk/core/utils/app_color.dart';
import 'package:team_taskk/core/utils/app_strings.dart';
import 'package:team_taskk/core/services/service_locator.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigateAfterSeconds(seconds: 3);
    super.initState();
  }

  void navigateAfterSeconds({required int seconds}) {
    String navigationPath;
    if(sl<CacheHelper>().getData(key: CacheKeys.isNew)?? true) {
      navigationPath = Routes.onBoarding;
    } else {
      navigationPath = Routes.signIn;
    }
    Future.delayed(Duration(seconds: seconds))
        .then((value) =>
          navigate(context: context, route: navigationPath));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Text(AppStrings.chatApp,style: GoogleFonts.odorMeanChey(color: Colors.white,fontSize: 64),),
      ),
    );
  }
}

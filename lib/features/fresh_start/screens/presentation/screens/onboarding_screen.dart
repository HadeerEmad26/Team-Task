import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:team_taskk/core/database/cache/cacheKeys.dart';
import 'package:team_taskk/core/database/cache/cache_helper.dart';
import 'package:team_taskk/core/routes/app_routes.dart';
import 'package:team_taskk/core/utils/app_assets.dart';
import 'package:team_taskk/core/utils/app_color.dart';
import 'package:team_taskk/core/utils/app_strings.dart';
import 'package:team_taskk/core/helpers/common_functions.dart';
import 'package:team_taskk/core/widgets/custom_round_elevated_button.dart';
import 'dart:math' as Math;

import 'package:team_taskk/features/fresh_start/screens/data/models/onBoarding_model.dart';

import '../../../../../core/services/service_locator.dart';


class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    int pageCount = OnBoardingModel.onBoardingScreen.length;
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
          controller: controller,
          itemCount: OnBoardingModel.onBoardingScreen.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(24.0.r),
              child: Column(
                children: [
                  //!! text
                  index != pageCount - 1
                      ? Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              controller.jumpToPage(
                                  OnBoardingModel.onBoardingScreen.length - 1);
                            },
                            child: Text(
                              AppStrings.skip,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                        )
                      : SizedBox(
                          height: 65.h,
                        ),
                  //!! image
                  Image.asset(
                      OnBoardingModel.onBoardingScreen[index].imagePath),
                  SizedBox(
                    height: 48.h,
                  ),
                  //!! title
                  Text(
                    OnBoardingModel.onBoardingScreen[index].title,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: AppColors.black, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  //!! subTitle
                  Text(
                    OnBoardingModel.onBoardingScreen[index].subTitle,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: AppColors.subTitleColor),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  //!! dots
                  SmoothPageIndicator(
                    controller: controller,
                    count: pageCount,
                    effect: const ExpandingDotsEffect(
                        activeDotColor: AppColors.primary,
                        dotHeight: 7,
                        dotWidth: 11,
                        spacing: 4),
                  ),
                  //!! buttons
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      index != 0? SizedBox(
                        width: 60.r,
                        height: 60.r,
                        child: CustomRoundElevatedButton(
                                onPressed: () {
                                  controller.previousPage(
                                    duration: const Duration(milliseconds: 200),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                  );
                                },
                              backgroundColor: AppColors.primary,
                          child: Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationY(Math.pi),
                          child: SvgPicture.asset(AppAssets.arrowRight,fit: BoxFit.cover,alignment: Alignment.center,width: 24.r,height: 24.r,))),
                      ): Container(),
                      index != pageCount - 1
                          ? SizedBox(
                          width: 125.w,
                            height: 60.w,
                            child: CustomRoundElevatedButton(
                                onPressed: () {
                                  controller.nextPage(
                                    duration: const Duration(milliseconds: 200),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                  );
                                },
                                backgroundColor: AppColors.primary,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(AppStrings.next,style: Theme.of(context).textTheme.displayMedium),
                                    SvgPicture.asset(AppAssets.arrowRight),
                                  ],
                                ),
                              ),
                          )
                          : SizedBox(
                            width: 125.w,
                            height: 60.w,
                            child: CustomRoundElevatedButton(
                                onPressed: () {
                                  //!! navigate to sign in page
                                  sl<CacheHelper>().saveData(key: CacheKeys.isNew, value: false);
                                  navigate(
                                      context: context, route: Routes.signUp);
                                },
                                backgroundColor: AppColors.primary,
                                child: Text(AppStrings.start,style: Theme.of(context).textTheme.displayMedium),
                              ),
                          ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

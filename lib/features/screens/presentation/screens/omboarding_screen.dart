import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:team_taskk/core/utils/app_color.dart';
import 'package:team_taskk/core/utils/app_routes.dart';
import 'package:team_taskk/core/utils/app_strings.dart';
import 'package:team_taskk/core/utils/coomens.dart';
import 'package:team_taskk/features/screens/data/models/onBoarding_model.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: PageView.builder(
            controller: controller,
            itemCount: OnBoardingModel.onBoardingScreen.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  //!! text
                  index!=2? Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        controller.jumpToPage(2);
                      },
                      child: Text(
                        AppStrings.skip,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ):SizedBox(height: 65.h,),
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
                    count: 3,
                    effect: const ExpandingDotsEffect(
                        activeDotColor: AppColors.primary,
                        dotHeight: 7,
                        dotWidth: 11,
                        spacing: 4),
                  ),
                  //!! buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      index!=0? ElevatedButton(
                        onPressed: () {
                          controller.previousPage(
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.fastLinearToSlowEaseIn,
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            backgroundColor: AppColors.primary),
                        child: const Icon(Icons.arrow_back),
                      ):Container(),
                      index!=2? ElevatedButton(
                        onPressed: () {
                          controller.nextPage(
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.fastLinearToSlowEaseIn,
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                        child: const Row(
                          children: [
                            Text(AppStrings.next),
                            Icon(Icons.arrow_forward)
                          ],
                        ),
                      ):ElevatedButton(
                        onPressed: () {
                          //!! navigate to sign in page
                          navigate(context: context, route: Routes.signIn);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                        child: const Text(AppStrings.start),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

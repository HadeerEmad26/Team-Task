import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_taskk/core/helpers/common_functions.dart';
import 'package:team_taskk/core/routes/app_routes.dart';
import 'package:team_taskk/core/utils/app_assets.dart';
import 'package:team_taskk/core/utils/app_color.dart';
import 'package:team_taskk/core/utils/app_strings.dart';
import 'package:team_taskk/core/widgets/custom_round_elevated_button.dart';
import 'package:team_taskk/features/auth/screens/presentation/components/CustomTextField.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 33.0.w, vertical: 48.h),
        child: Column(
          children: [
            Image.asset(AppAssets.signIn),
            Gap(71.h),
            CustomTextField(
              emailController: emailController,
              labelText: AppStrings.email,
              prefixIcon: const Icon(
                Icons.email_outlined,
                color: AppColors.gray,
              ),
            ),
            Gap(32.h),
            CustomTextField(
                emailController: emailController,
                labelText: AppStrings.password,
                prefixIcon: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: SvgPicture.asset(
                      AppAssets.lock,
                    ))),
            Gap(15.h),
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {
                  navigate(context: context, route: Routes.forgetPassword);
                },
                child: Text(
                  AppStrings.forgetPassword,
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.grayText,
                      letterSpacing: -1
                  ),
                ),
              ),
            ),
            Gap(78.h),
            SizedBox(
              width: double.infinity,
              height: 50.h,
              child: CustomRoundElevatedButton(
                onPressed: () {},
                backgroundColor: AppColors.primary,
                child: Text(
                  AppStrings.signIn,
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(fontSize: 12),
                ),
              ),
            ),
            Gap(15.h),
            Align(
              alignment: Alignment.topLeft,
              child: TextButton(
                onPressed: () {
                  navigate(context: context, route: Routes.signUp);
                },
                child: Text(
                  AppStrings.dontHaveAccount,
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.grayText,
                      letterSpacing: -1
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

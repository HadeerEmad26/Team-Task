import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_taskk/core/utils/app_color.dart';
import 'package:team_taskk/core/utils/app_text_style.dart';

ThemeData getAppTheme(){
  return ThemeData(
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            padding: EdgeInsets.zero,

            fixedSize: Size.fromHeight(15.h)
        ),
      ),
      textTheme: TextTheme(
          displaySmall:  regularStyle(fontSize: 12,color: Colors.white),
          displayMedium: regularStyle(fontSize: 16,color: Colors.white),
          displayLarge: regularStyle(fontSize: 24,color: Colors.white)
      ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.gray),
      borderRadius: BorderRadius.circular(8.r),
    ),
    labelStyle: GoogleFonts.poppins(
      color: AppColors.gray,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
    suffixIconColor: AppColors.gray,
    )
  );
}
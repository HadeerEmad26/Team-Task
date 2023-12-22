import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRoundElevatedButton extends StatelessWidget {
  const CustomRoundElevatedButton({
    super.key,
    required this.onPressed, required this.backgroundColor, required this.child
  });
  final Function() onPressed;
  final Color backgroundColor;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
          backgroundColor: backgroundColor),
      child:child,
    );
  }
}

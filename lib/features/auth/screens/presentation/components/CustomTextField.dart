import 'package:flutter/material.dart';
import 'package:team_taskk/core/utils/app_strings.dart';

//ignore: must_be_immutable
class CustomTextField extends StatefulWidget {

  CustomTextField({
    super.key,
    required this.emailController,
    this.isPassword=false,
    this.isObscure=false,
    required this.labelText,
    required this.prefixIcon
  });

  final TextEditingController emailController;
  bool isPassword;
  bool isObscure;
  String labelText;
  Widget prefixIcon;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isObscure,
      obscuringCharacter: AppStrings.obscureCharacter,
      controller: widget.emailController,
      decoration: InputDecoration(
        suffixIcon: widget.isPassword?IconButton(onPressed: () {
          setState(() {
            widget.isObscure=!widget.isObscure;
          });
        }, icon: Icon(widget.isObscure?Icons.visibility_off_outlined:Icons.visibility),):null,
        labelText: widget.labelText,
        prefixIcon: widget.prefixIcon,


      ),
    );
  }
}

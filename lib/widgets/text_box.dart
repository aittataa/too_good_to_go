import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';

class TextBox extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String hint;
  final IconData icon;
  final Widget suffixIcon;
  const TextBox({
    this.controller,
    this.hint,
    this.icon,
    this.suffixIcon,
    this.obscureText = false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.next,
        cursorColor: AppTheme.mainColor,
        style: TextStyle(
          color: AppTheme.blackTextColor.withOpacity(.75),
          fontWeight: FontWeight.bold,
        ),
        obscureText: obscureText,
        obscuringCharacter: "●",
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: AppTheme.lightMainColor,
            size: 27,
          ),
          suffixIcon: suffixIcon,
          hintText: hint,
          hintStyle: TextStyle(
            color: AppTheme.blackTextColor.withOpacity(.5),
            fontWeight: FontWeight.bold,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(
              width: 1.5,
              color: AppTheme.lightMainColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(
              width: 2.5,
              color: AppTheme.lightMainColor,
            ),
          ),
        ),
      ),
    );
  }
}

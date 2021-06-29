import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';

class TextBox extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String hint;
  final TextInputType keyboardType;
  final IconData icon;
  final Widget suffixIcon;
  final Function onChanged;
  const TextBox({
    this.controller,
    this.hint,
    this.keyboardType,
    this.icon,
    this.suffixIcon,
    this.obscureText = false,
    this.onChanged,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        onChanged: onChanged,
        controller: controller,
        keyboardType: keyboardType,
        textInputAction: TextInputAction.next,
        cursorColor: AppTheme.mainColor,
        style: TextStyle(
          color: AppTheme.blackTextColor.withOpacity(.75),
          fontWeight: FontWeight.bold,
        ),
        autocorrect: true,
        autofocus: true,
        obscureText: obscureText,
        obscuringCharacter: Messages.FIELD_TEXT_OBSCURING_CHARACTER,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          border: InputBorder.none,
          prefixIcon: Icon(icon, color: AppTheme.lightMainColor),
          suffixIcon: suffixIcon,
          hintText: hint,
          hintStyle: TextStyle(
            color: AppTheme.blackTextColor.withOpacity(.5),
            fontWeight: FontWeight.bold,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(width: 1.5, color: AppTheme.lightMainColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(width: 2.5, color: AppTheme.lightMainColor),
          ),
        ),
      ),
    );
  }
}

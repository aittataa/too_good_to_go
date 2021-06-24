import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';

class EditText extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final Function onPressed;
  const EditText({
    this.controller,
    this.hintText,
    this.obscureText = false,
    this.keyboardType,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      color: AppTheme.whiteBackColor,
      child: TextField(
        controller: controller,
        autofocus: true,
        obscureText: obscureText,
        obscuringCharacter: Messages.FIELD_TEXT_OBSCURING_CHARACTER,
        cursorColor: AppTheme.lightMainColor,
        textInputAction: TextInputAction.next,
        keyboardType: keyboardType,
        style: TextStyle(
          color: AppTheme.blackTextColor.withOpacity(0.75),
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
            color: AppTheme.blackTextColor.withOpacity(0.25),
          ),
          suffixIcon: IconButton(
            onPressed: onPressed,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: Icon(
              CupertinoIcons.clear_thick_circled,
              color: AppTheme.blackIconColor.withOpacity(0.5),
            ),
          ),
        ),
      ),
    );
  }
}

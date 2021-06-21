import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';

class EditText extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Function onPressed;
  const EditText({this.controller, this.hintText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      color: AppTheme.whiteBackColor,
      child: TextField(
        controller: controller,
        autofocus: true,
        cursorColor: AppTheme.lightMainColor,
        textInputAction: TextInputAction.next,
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

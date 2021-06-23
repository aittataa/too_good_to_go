import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/widgets/edit_text.dart';
import 'package:too_good_to_go/widgets/profile_title.dart';

class PasswordItem extends StatelessWidget {
  final TextEditingController currentPassword;
  final TextEditingController newPassword;
  final TextEditingController confirmPassword;
  final Function onCurrentPressed;
  final Function onNewPressed;
  final Function onConfirmPressed;
  const PasswordItem({
    this.currentPassword,
    this.newPassword,
    this.confirmPassword,
    this.onCurrentPressed,
    this.onNewPressed,
    this.onConfirmPressed,
  });
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProfileTitle(label: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD_TITLE_1),
          EditText(
            onPressed: onCurrentPressed,
            controller: currentPassword,
            hintText: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD_HINT_1,
            obscureText: true,
            keyboardType: TextInputType.text,
          ),
          ProfileTitle(label: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD_TITLE_2),
          EditText(
            onPressed: onNewPressed,
            controller: newPassword,
            hintText: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD_HINT_2,
            obscureText: true,
            keyboardType: TextInputType.text,
          ),
          ProfileTitle(label: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD_TITLE_3),
          EditText(
            onPressed: onConfirmPressed,
            controller: confirmPassword,
            hintText: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD_HINT_3,
            obscureText: true,
            keyboardType: TextInputType.text,
          ),
        ],
      ),
    );
  }
}

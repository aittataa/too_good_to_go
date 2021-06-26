import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/widgets/edit_text.dart';
import 'package:too_good_to_go/widgets/profile_title.dart';

class PasswordItem extends StatelessWidget {
  final TextEditingController currentPassword;
  final TextEditingController newPassword;
  final TextEditingController confirmPassword;

  const PasswordItem({
    this.currentPassword,
    this.newPassword,
    this.confirmPassword,
  });
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProfileTitle(label: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD_TITLE_1),
          EditText(
            controller: currentPassword,
            hintText: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD_HINT_1,
            obscureText: true,
            keyboardType: TextInputType.text,
          ),
          ProfileTitle(label: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD_TITLE_2),
          EditText(
            controller: newPassword,
            hintText: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD_HINT_2,
            obscureText: true,
            keyboardType: TextInputType.text,
          ),
          ProfileTitle(label: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD_TITLE_3),
          EditText(
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

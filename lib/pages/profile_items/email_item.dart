import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/widgets/edit_text.dart';
import 'package:too_good_to_go/widgets/profile_title.dart';

class EmailItem extends StatelessWidget {
  final TextEditingController controller;
  const EmailItem({this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileTitle(label: Messages.PROFILE_ACCOUNT_EMAIL),
        EditText(
          controller: controller,
          hintText: Messages.PROFILE_ACCOUNT_EMAIL,
          keyboardType: TextInputType.emailAddress,
        ),
      ],
    );
  }
}

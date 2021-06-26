import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/widgets/edit_text.dart';
import 'package:too_good_to_go/widgets/profile_title.dart';

class NameItem extends StatelessWidget {
  final TextEditingController controller;
  const NameItem({this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileTitle(label: Messages.PROFILE_ACCOUNT_NAME),
        EditText(
          controller: controller,
          hintText: Messages.PROFILE_ACCOUNT_NAME,
          keyboardType: TextInputType.name,
        ),
      ],
    );
  }
}

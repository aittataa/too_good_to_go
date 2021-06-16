import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';

class PaymentButton extends StatelessWidget {
  final String image;
  final Function onPressed;
  const PaymentButton({@required this.image, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: AppTheme.whiteBackColor,
        side: BorderSide(color: AppTheme.darkColor.withOpacity(.75), width: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Image.asset(
        "$image",
        fit: BoxFit.cover,
        height: 25,
        width: 75,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';

class PaymentPay extends StatelessWidget {
  final String image;
  const PaymentPay({@required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: 50,
        maxWidth: 75,
      ),
      decoration: BoxDecoration(
        color: AppTheme.whiteBackColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppTheme.blackBorderColor.withOpacity(.75)),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
    );
  }
}

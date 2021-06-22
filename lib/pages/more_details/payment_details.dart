import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/widgets/payment_button.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

class PaymentDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: TitleText(title: Messages.MORE_PAYMENT_METHODS_TITLE),
        ),
        ListTile(
          title: SubtitleText(
            subtitle: Messages.MORE_PAYMENT_METHODS_SUBTITLE_1,
            color: AppTheme.blackTextColor.withOpacity(.75),
          ),
        ),
        ListTile(
          title: SubtitleText(
            subtitle: Messages.MORE_PAYMENT_METHODS_SUBTITLE_2,
            color: AppTheme.blackTextColor.withOpacity(.75),
          ),
        ),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PaymentPay(image: Messages.PAYPAL_ICON),
              PaymentPay(image: Messages.GOOGLE_PAY_ICON),
              PaymentPay(image: Messages.VISA_CARD_ICON),
              PaymentPay(image: Messages.MASTER_CARD_ICON),
            ],
          ),
        ),
        ListTile(
          title: TitleText(
            title: Messages.MORE_PAYMENT_METHODS_VOUCHERS,
            textAlign: TextAlign.start,
          ),
        ),
        ListTile(
          title: DottedBorder(
            color: AppTheme.blackBackColor.withOpacity(0.75),
            strokeWidth: 1.5,
            borderType: BorderType.RRect,
            radius: Radius.circular(10),
            dashPattern: [10, 8],
            child: ListTile(
              leading: Icon(
                CupertinoIcons.tickets,
                color: AppTheme.mainColor,
              ),
              title: Wrap(
                children: [
                  Icon(
                    CupertinoIcons.add_circled_solid,
                    color: AppTheme.lightMainColor,
                  ),
                  SizedBox(width: 10),
                  TitleText(
                    title: Messages.MORE_PAYMENT_METHODS_VOUCHERS_ADD,
                    color: AppTheme.blackTextColor.withOpacity(0.5),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

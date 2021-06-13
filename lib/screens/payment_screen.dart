import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/widgets/back_button.dart';

class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(),
        title: Text(
          "Payment Methods",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            ListTile(
              title: Text(
                "Payment Cards",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "You haven't added any payment cards yet. \nYou can add a card to your account when making a purchase"
                "\n\n\nWe also support the following methods at checkout",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: null,
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: BorderSide(color: Colors.black87, width: 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Image.asset(
                      "icons/paypal.png",
                      fit: BoxFit.cover,
                      height: 25,
                      width: 75,
                    ),
                  ),
                  TextButton(
                    onPressed: null,
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: BorderSide(color: Colors.black87, width: 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Image.asset(
                      "icons/g_pay.png",
                      fit: BoxFit.cover,
                      height: 25,
                      width: 75,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                "Vouchers",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: DottedBorder(
                color: Colors.black54,
                strokeWidth: 1.5,
                borderType: BorderType.RRect,
                radius: Radius.circular(10),
                dashPattern: [10, 5],
                child: ListTile(
                  leading: Icon(
                    CupertinoIcons.tickets,
                    color: AppTheme.mainColor,
                  ),
                  title: Wrap(
                    children: [
                      Icon(
                        CupertinoIcons.add_circled_solid,
                        color: AppTheme.mainColor,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Add Voucher",
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w900,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

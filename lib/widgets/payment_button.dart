import 'package:flutter/material.dart';

class PaymentButton extends StatelessWidget {
  final String image;
  final Function onPressed;
  const PaymentButton({@required this.image, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        side: BorderSide(color: Colors.black87, width: 1),
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

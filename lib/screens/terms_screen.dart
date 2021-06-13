import 'package:flutter/material.dart';
import 'package:too_good_to_go/widgets/back_button.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(),
        title: Text(
          "Terms and Conditions",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            ListTile(
              title: Text(
                "Terms & Conditions",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w900,
                  fontSize: 32,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Too Good To Go / Terms & Conditions",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

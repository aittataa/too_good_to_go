import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/widgets/page_title.dart';

class MorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        PageTitle(title: Messages.LABEL_MORE),
        SizedBox(height: 20),

        ///
        ListTile(
          tileColor: Colors.white,
          leading: Icon(
            CupertinoIcons.person_crop_circle,
            color: Colors.black54,
            size: 27,
          ),
          title: Text(
            "My Profile",
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Icon(
            CupertinoIcons.right_chevron,
            color: Colors.black54,
            size: 27,
          ),
        ),
        Divider(height: 0),

        ///
        ListTile(
          tileColor: Colors.white,
          leading: Icon(
            CupertinoIcons.doc_text_fill,
            color: Colors.black54,
            size: 27,
          ),
          title: Text(
            "Orders",
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Icon(
            CupertinoIcons.right_chevron,
            color: Colors.black54,
            size: 27,
          ),
        ),
        Divider(height: 0),

        ///
        ListTile(
          tileColor: Colors.white,
          leading: Icon(
            CupertinoIcons.creditcard_fill,
            color: Colors.black54,
            size: 27,
          ),
          title: Text(
            "Payment Methods",
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Icon(
            CupertinoIcons.right_chevron,
            color: Colors.black54,
            size: 27,
          ),
        ),
        Divider(height: 0),

        ///
        ListTile(
          tileColor: Colors.white,
          leading: Icon(
            CupertinoIcons.news_solid,
            color: Colors.black54,
            size: 27,
          ),
          title: Text(
            "Blog",
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Icon(
            CupertinoIcons.right_chevron,
            color: Colors.black54,
            size: 27,
          ),
        ),
        Divider(height: 0),

        ///
        ListTile(
          tileColor: Colors.white,
          leading: Icon(
            CupertinoIcons.checkmark_alt_circle_fill,
            color: Colors.black54,
            size: 27,
          ),
          title: Text(
            "Terms and Conditions",
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Icon(
            CupertinoIcons.right_chevron,
            color: Colors.black54,
            size: 27,
          ),
        ),
        Divider(height: 0),

        ///
        ListTile(
          tileColor: Colors.white,
          leading: Icon(
            CupertinoIcons.checkmark_alt_circle_fill,
            color: Colors.black54,
            size: 27,
          ),
          title: Text(
            "Help Center",
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Icon(
            CupertinoIcons.right_chevron,
            color: Colors.black54,
            size: 27,
          ),
        ),
        Divider(height: 0),
      ],
    ));
  }
}

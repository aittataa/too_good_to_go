import 'package:flutter/material.dart';
import 'package:too_good_to_go/widgets/profile_title.dart';

class DetailsItem extends StatelessWidget {
  final String title;
  final Widget child;
  const DetailsItem({
    this.title,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileTitle(label: title),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 10),
            color: Colors.white,
            child: child,
          ),
        ),
      ],
    );
  }
}

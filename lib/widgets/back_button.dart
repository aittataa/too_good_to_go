import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackIcon extends StatelessWidget {
  const BackIcon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => {
        FocusScope.of(context).unfocus(),
        Navigator.pop(context),
      },
      icon: Icon(
        CupertinoIcons.back,
        color: Colors.white,
      ),
    );
  }
}

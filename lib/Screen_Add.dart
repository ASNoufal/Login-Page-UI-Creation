import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenAdd extends StatelessWidget {
  const ScreenAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: (() {
          showBottomsheet(context);
        }),
        child: Text('ClickME'),
      ),
    );
  }

  showBottomsheet(BuildContext ctx) async {
    await showModalBottomSheet(
        context: ctx,
        builder: (ctx1) {
          return Text('How are U');
        });
  }
}

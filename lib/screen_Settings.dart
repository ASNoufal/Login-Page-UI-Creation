import 'package:flutter/material.dart';

class ScreenSettings extends StatelessWidget {
  final List = ['Male', 'Female', 'TransGender'];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonFormField(
          hint: Text('Gender'),
          onChanged: (value) {
            print(value);
          },
          items: List.map((e) {
            return DropdownMenuItem(value: e[0], child: Text(e));
          }).toList()),
    );
  }
}

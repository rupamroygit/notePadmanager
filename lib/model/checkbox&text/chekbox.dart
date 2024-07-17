import 'package:flutter/material.dart';

class CheckBoxs extends StatefulWidget {
  const CheckBoxs({super.key, this.isChecked, this.text});

  final bool? isChecked;

  final String? text;

  bool? isCheckedOrNot() {
    return isChecked;
  }

  @override
  State<CheckBoxs> createState() {
    return _CheckBox();
  }
}

class _CheckBox extends State<CheckBoxs> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
        ),
        const Expanded(
            child: Column(
          children: <Widget>[
            Text("HI"),
            Text("NOte"),
          ],
        ))
      ],
    );
  }

  bool isCheckedOrNot() {
    return isChecked;
  }
}

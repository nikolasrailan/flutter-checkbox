import 'package:aula_check/check_box_option.dart';
import 'package:aula_check/check_custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:aula_check/home.dart';

class CheckboxCustomWidget extends StatefulWidget {
  const CheckboxCustomWidget({super.key, required this.item});

  final CheckBoxOption item;

  @override
  State<CheckboxCustomWidget> createState() => _CheckboxCustomWidget();
}

class _CheckboxCustomWidget extends State<CheckboxCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(widget.item.title),
      value: widget.item.checked,
      onChanged: (value) {
        setState(() {
          widget.item.checked = value!;
        });
      },
    );
  }
}

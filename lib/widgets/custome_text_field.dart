import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField({
    super.key,
    required this.text,  this.maxlines=1,
  });
  final String text;
  final int maxlines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlines,
      cursorColor: kPrimaryColor, //COLOR OF POINTER
      decoration: InputDecoration(
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(kPrimaryColor),
          hintText: text,
          hintStyle: const TextStyle(color: kPrimaryColor)),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderSide: BorderSide(
          color: color ?? Colors.white,
        ),
        borderRadius: BorderRadius.circular(8));
  }
}

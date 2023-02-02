import 'package:flutter/material.dart';
class TextForm extends StatelessWidget {
  final String text;

  TextForm({
    required this.text,
  }) : super(key: ValueKey(text));

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(5.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(5.5),
        ),
        hintText: text,
        hintStyle: TextStyle(color: Colors.white),
        filled: true,
        fillColor: Color(0xff000000),
      ),
    );
  }
}

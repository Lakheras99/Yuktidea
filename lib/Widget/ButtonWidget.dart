import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  ButtonWidget({
    required this.text,
    required this.onPressed,
  }) : super(key: ValueKey(text));

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: onPressed,
      child: Container(
        height: h * 0.05,
        width: w * 0.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffEF403B),
        ),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              color: Color(
            0xffFFFFFF,
          )),
        )),
      ),
    );
  }
}

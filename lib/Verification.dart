import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yutkidea/Widget/verificationSizebox.dart';

class Verify extends StatelessWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var h = MediaQuery.of(context).size.height;
    // var w = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff121110),
        body: Form(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            VerificationBox(),
            VerificationBox(),
            VerificationBox(),
            VerificationBox(),

          ],
        )),
      ),
    );
  }
}

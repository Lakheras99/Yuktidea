import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class VerificationBox extends StatelessWidget {
  const VerificationBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SizedBox(
        height: 68,
        width: 64,
        child: TextFormField(
          decoration: InputDecoration(hintText: '0'),
          onChanged: (value) {
            if(value.length==1){
              FocusScope.of(context).nextFocus();
            }
          },
          style: Theme.of(context).textTheme.headline6,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
        ),
      )
    );
  }
}

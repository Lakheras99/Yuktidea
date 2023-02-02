import 'package:flutter/material.dart';
import 'package:yutkidea/LoginPage.dart';
import 'package:yutkidea/Widget/ButtonWidget.dart';
import 'package:yutkidea/Widget/textform.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: h * 1,
          width: w * 1,
          decoration: BoxDecoration(
            color: Color(0xff121110),
          ),
          child: Column(
            children: [
              SizedBox(
                height: h * 0.05,
              ),
              Text('Create new account',
                  style: TextStyle(color: Color(0xffFFFFFF))),
              SizedBox(
                height: h * 0.03,
              ),
              Text(
                'Fill in the form to continue',
                style: TextStyle(color: Color(0xffFFFFFF)),
              ),
              SizedBox(height: h*0.05,),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextForm(text: 'Name'),
              ),

              Padding(
                padding: const EdgeInsets.all(20),
                child: TextForm(text: 'Email'),
              ),

              Padding(
                padding: const EdgeInsets.all(20),
                child: TextForm(text: 'Mobile no.'),
              ),

              Padding(
                padding: const EdgeInsets.all(20),
                child: TextForm(text: 'Password'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: ButtonWidget(text: 'Signup',onPressed: (){

                }),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?  ',
                      style: TextStyle(color: Color(0xffFFFFFF)),
                    ),
                    InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Loginpage(),));
                    },
                        child: Text(
                          'Login',
                          style: TextStyle(color: Color(0xffEF403B)),
                        ))
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

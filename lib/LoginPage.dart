import 'package:flutter/material.dart';
import 'package:yutkidea/HomePage.dart';
import 'package:yutkidea/Widget/ButtonWidget.dart';
import 'package:yutkidea/SignUp.dart';
import 'package:yutkidea/Widget/textform.dart';


class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    const rightPadding = 20.0;

    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Color(0xff121110),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: h * 1,
          width: w * 1,
          color: Color(0xff121110),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.1,
                ),
                Center(
                  child: Text(
                    'Welcome Back!',
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 20,
                      fontFamily: 'Montserrat-ExtraBold',
                    ),
                  ),
                ),
                SizedBox(height: h * 0.05),
                Text('Please sign in to your account',
                    style: TextStyle(
                        color: Color(
                      0xffFFFFFF,
                    ))),
                SizedBox(
                  height: h * 0.07,
                ),
                Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextForm(text: "Email/Mobile Number")),
                SizedBox(
                  height: h * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(5.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(5.5),
                      ),
                      hintText: "Password",
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.white,
                      ),
                      hintStyle: TextStyle(color: Colors.white),
                      filled: true,
                      fillColor: Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: w * 0.6),
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Color(
                          0xffFFFFFF,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.2,
                ),
                ButtonWidget(
                  text: 'Login',
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                  },
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dont have an account?  ',
                      style: TextStyle(color: Color(0xffFFFFFF)),
                    ),
                    InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(),));
                    },
                        child: Text(
                      'Sign up',
                      style: TextStyle(color: Color(0xffEF403B)),
                    ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:yutkidea/LoginPage.dart';
import 'dart:async';
import 'package:yutkidea/Widget/ButtonWidget.dart';

class StartUp extends StatefulWidget {
  @override
  _StartUpState createState() => _StartUpState();
}

class _StartUpState extends State<StartUp> {
  int currentIndex = 0;
  late Timer _timer;

  final List<String> images = [
    "assets/images/cam1.jpg",
    "assets/images/cam2.jpg",
    "assets/images/cam3.jpeg",
    "assets/images/cam4.png",
    "assets/images/cam5.jpeg",
    "assets/images/cam6.jpeg",
    "assets/images/cam7.jpeg",
    "assets/images/cam8.jpeg",
    "assets/images/cam9.jpeg",
    "assets/images/cam10.jpeg",
  ];

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      setState(() {
        currentIndex = (currentIndex + 1) % images.length;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(images[currentIndex]),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: h * 0.25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: h * 0.124,
                      width: w * 0.124,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.video_camera_back_outlined,
                        color: Colors.black,
                        size: 30.0,
                      ),
                      alignment: Alignment.center,
                    ),
                    Text(
                      'CINE COMPASS',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Color(0xffFFFFFF),
                        fontSize: 30,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.5,
              ),
              Text(
                'YOUR ONE STOP SOLUTION TO ',
                style: TextStyle(
                  fontSize: 23,
                  color: Color(0xffFFFFFF),
                  decoration: TextDecoration.none,
                ),
              ),
              Text(
                'Rent Pre production eqipment easily ',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xffFFFFFF),
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(height: h * 0.05),
              ButtonWidget(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Loginpage(),
                      ));
                },
                text: 'Get Started',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
              ),
              Text(
                'HOME',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Color(0xffFFFFFF),
                  fontSize: 30,
                ),
              )
            ],
          ),

        ),
      ),
    );
  }
}

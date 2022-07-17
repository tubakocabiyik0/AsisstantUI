import 'package:assistant_app/commonWidgets/Buttons.dart';
import 'package:assistant_app/commonWidgets/LogoText.dart';
import 'package:assistant_app/screens/LoginScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'LoginScreen.dart';
import 'LoginScreen.dart';

class SplashScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
              height: 600,
              child: PageView(
            scrollDirection: Axis.horizontal,
            children: [SplashBody(),],
            controller: _controller,
          )),
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: WormEffect(
                dotColor: Colors.grey.shade300,
                activeDotColor: Colors.green,
                dotWidth: 13,
                dotHeight: 13
            ),
          ),
          PageDown()
        ],
      ),
    );
  }

  Widget SplashBody() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.1,
              left: MediaQuery.of(context).size.width * 0.24),
          child: LogoText(),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          "Dijital Asistan'a ",
          style: TextStyle(
              color: Colors.black54, fontSize: 28, fontWeight: FontWeight.w600),
        ),
        Text(
          "Hoşgeldiniz ! ",
          style: TextStyle(
              color: Colors.black54, fontSize: 28, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.width * 0.24,
          child: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 20,
                fontWeight: FontWeight.normal),
          ),
        ),
        SizedBox(
          height: 45,
        ),
        Image.asset(
          "assets/images/arrow.png",
          width: 60,
          height: 60,
          color: Colors.green,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        MyButton(() {}, Colors.green, "Başla", 60.0, 130.0),

      ],
    );
  }

  PageDown() {
    return Column(

      children: [
        SizedBox(height:MediaQuery.of(context).size.height * 0.05 ,),
        Text("Zaten Hesabın Var Mı?",style: TextStyle(
            color: Colors.black54,
            fontSize: 18,
            fontWeight: FontWeight.normal),),
        SizedBox(height:MediaQuery.of(context).size.height * 0.03 ,),
        GestureDetector(
          onTap: (){
            Get.to(LoginScreenState());

          },
          child: Text("Giriş Yap",style: TextStyle(
              color: Colors.green,
              fontSize: 20,
              fontWeight: FontWeight.w400),),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class LogoText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
          height: MediaQuery.of(context).size.width*0.15,
          width: MediaQuery.of(context).size.width*0.15,
          child: Image.asset("assets/images/logo.png")),Text("assistant",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 32))
    ],);
  }

}
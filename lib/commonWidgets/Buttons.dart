import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget{
  Function onPressed;
  Color color;
  String buttonTitle;
  var height;
  var width;


  MyButton(this.onPressed, this.color, this.buttonTitle,this.height,this.width);

  @override
  Widget build(BuildContext context) {
    return MaterialButton( onPressed: onPressed,
    textColor: Colors.white,color: Colors.green,elevation: 0,child: Text(buttonTitle,style: TextStyle(fontSize:22),textAlign: TextAlign.center,),height: height,minWidth: width,);

  }

}
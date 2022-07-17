import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryCards extends StatelessWidget {
  IconData icon;
  String title;
  int count;
  Color color;
  double height;
  double width;

  CategoryCards({this.icon, this.title, this.count,this.color,this.height,this.width});

  @override
  Widget build(BuildContext context) {
    return Container(

      height: height,
      width: width,
      child: Card(
        elevation: 2,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          side: BorderSide(
            color: Colors.grey.shade300,
            width: 1.0,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding:EdgeInsets.only(top:10),
              child: Icon(icon,color: color,size: 40,),
            ),
            SizedBox(height: 13,),
            Text(title,style: TextStyle(fontSize: 17,color: Colors.grey)),

            Text(count==null ? "" : count.toString(),style: TextStyle(fontSize: 27,color: Colors.black),),
          ],
        ),
      ),
    );
  }
}

import 'package:assistant_app/commonWidgets/CategoryCards.dart';
import 'package:assistant_app/commonWidgets/LogoText.dart';
import 'package:assistant_app/model/Hours.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: LogoText(),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.add_alert_outlined,
                color: Colors.grey.shade500,
                size: 32,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 5),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/pp.png"),
              ),
            )
          ],
        ),
        body: HomeBody(),
      ),
    );
  }

  Widget HomeBody() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * 0.05,
              left: MediaQuery.of(context).size.height * 0.01),
          child: Row(
            children: [
              CategoryCards(
                icon: Icons.account_circle_outlined,
                title: "Aktif Danışman",
                count: 36,
                color: Colors.green,
                width: 128,
                height: 125,
              ),
              CategoryCards(
                icon: Icons.calendar_today,
                title: "Aktif Danışman",
                count: 3,
                color: Colors.green,
                height: 125,
                width: 128,
              ),
              CategoryCards(
                icon: Icons.no_meals,
                title: "Aktif Danışman",
                count: 36,
                color: Colors.green,
                height: 125,
                width: 128,
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height * 0.015),
              child: Text(
                "Bugünün Randevuları",
                style: TextStyle(fontSize: 23, color: Colors.black),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.height * 0.13,
            ),
            IconButton(
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
                onPressed: null,
                iconSize: 40)
          ],
        ),
        Flexible(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: 8,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return ListViewItem(index);
              }),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Expanded(child: pageBottom()),
        ),
      ],
    );
  }

  Widget ListViewItem(int index) {
    return Column(
      children: [
        Container(
          height: 65,
          width: 65,
          child: Card(
            elevation: 2,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              side: BorderSide(
                color: Colors.green,
                width: 1.0,
              ),
            ),
            child: Center(
                child: Text(
              Hours().titleList[index],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25),
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Text(Hours().hoursList[index].toString(),
              style: TextStyle(fontSize: 18)),
        ),
      ],
    );
  }

  Widget pageBottom() {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        return CategoryCards(
          icon: (Icons.account_circle_outlined),
          title: "Danışanlar",
          color: Colors.grey.shade500,
          height: 0,
          width: 0,
        );
      },
    );
  }
}

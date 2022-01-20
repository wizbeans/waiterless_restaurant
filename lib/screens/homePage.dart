// import 'package:flutter/cupertino.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:widgets/const/colors.dart';

// void main() {
//   runApp(const MyApp());
// }

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);
static const routeName = "/homepage";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

var bannerItems = ["food", "food", "food", "food"];
var bannerImages = [
  "images/food1.jpg",
  "images/food2.jpg",
  "images/food3.jpg",
  "images/food4.jpg"
];

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    Future<List<Widget>> createList() async {
      // List<Widget> items = new List<Widget>();
      List<Widget> items = [];
      String dataString =
      await DefaultAssetBundle.of(context).loadString("assets/data.json");
      List<dynamic> dataJSON = jsonDecode(dataString);

      dataJSON.forEach((object) {
        String finalString = "";
        List<dynamic> dataList = object["placeItems"];

        dataList.forEach((item) {
          finalString = finalString + item + " | ";
        });
        items.add(Padding(
          padding: EdgeInsets.all(2.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 2.0,
                      blurRadius: 5.0),
                ]),
            margin: EdgeInsets.all(5.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0)),
                  child: Image.asset(object["placeImage"],
                      width: 80, height: 80, fit: BoxFit.cover),
                ),
                SizedBox(
                  width: 250,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(object["placeName"]),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0, bottom: 2.0),
                          child: Text(
                            finalString,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black54,
                            ),
                            maxLines: 1,
                          ),
                        ),
                        Text(
                          "Min. Order: ${object["minOrder"]}",
                          style:
                          TextStyle(fontSize: 12.0, color: Colors.black54),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
      });
      return items;
    }

    return Scaffold(
      // backgroundColor: Colors.lightBlueAccent,
      // backgroundColor: Colors.transparent,
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    // color: PrimaryColor,
                    decoration:
                    BoxDecoration(
                      border: Border.all(color: AppColor.primary),
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.2),bottomRight: Radius.circular(10.0)),
                      color: AppColor.primary,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.menu),
                            color: Colors.white),
                        Text(
                          "StudentCenter",
                          style: TextStyle(
                              fontSize: 28,
                              fontFamily: "Pacifico",
                              color: Colors.white),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.person, color: Colors.white))
                      ],
                    ),
                  ),
                  BannerWidgetArea(),
                  Container(
                    child: FutureBuilder(
                        initialData: <Widget>[Text("")],
                        future: createList(),
                        builder: (context, projectSnap) {
                          if (projectSnap.hasData) {
                            return Padding(
                              padding: EdgeInsets.all(8.0),
                              child: ListView(
                                primary: false,
                                shrinkWrap: true,
                                children: projectSnap.data as List<Widget>,
                              ),
                            );
                          } else {
                            return CircularProgressIndicator();
                          }
                        }),
                  )
                ],
              ),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColor.primary,
        child: Icon(
          MdiIcons.food,
          color: Colors.white,
        ),
      ),
    );
  }
}

class BannerWidgetArea extends StatelessWidget {
  const BannerWidgetArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    PageController controller =
    PageController(viewportFraction: 0.8, initialPage: 1);
    // List<Widget> banners = new List<Widget>();
    List<Widget> banners = [];
    for (int i = 0; i < bannerItems.length; i++) {
      var bannerView = Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black38,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 4.0,
                          spreadRadius: 1.0)
                    ]),
              ),
              ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  child: Image.asset(
                    bannerImages[i],
                    fit: BoxFit.cover,
                  )),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.black38])),
              )
            ],
          ),
        ),
      );
      banners.add(bannerView);
    }

    return Container(
      height: screenHeight * 5 / 16,
      width: screenWidth,
      child: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: banners,
      ),
    );
  }
}

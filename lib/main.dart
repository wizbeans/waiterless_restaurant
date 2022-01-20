// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:widgets/const/colors.dart';
// import 'package:widgets/main.dart';
import './screens/gettingStarted.dart';
import './screens/homePage.dart';
import './screens/splashScreen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Metropolis-Regular",
        primarySwatch: Colors.red,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(
            AppColor.primary
            ),
              shape: MaterialStateProperty.all(
                StadiumBorder(),
              ),
            ),
        ),
        textTheme: TextTheme(bodyText2: TextStyle(color:AppColor.secondary,
        ),
        ),
      ),
      home: SplashScreen(),
      routes: {
        gettingStarted.routeName:(context)=>gettingStarted(),
        homePage.routeName:(context)=>homePage()
      },
    );
  }
}

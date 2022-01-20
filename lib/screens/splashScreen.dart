import 'dart:async';

import 'package:flutter/material.dart';
import './gettingStarted.dart';
import '../utils/helper.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;
  @override
  void initState(){
    _timer = Timer(Duration(milliseconds: 4000), (){
      Navigator.of(context).pushReplacementNamed(gettingStarted.routeName);
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: SafeArea(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image:DecorationImage(
                    image: AssetImage("images/bg-01.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                height: double.infinity,
                width: double.infinity,
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset(Helper.getAssetName("technocrats.jpg")),
              )
            ],
          ),
        ),
      ),
    );
  }
  }


import 'package:flutter/cupertino.dart';
import 'package:clip_shadow/clip_shadow.dart';
import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './homePage.dart';
class gettingStarted extends StatelessWidget {
  const gettingStarted({Key? key}) : super(key: key);
  static const routeName = "/gettingStarted";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          // decoration: BoxDecoration(
          //   image:DecorationImage(
          //     image: AssetImage("images/background.jpg"),
          //     fit: BoxFit.cover,
          //   ),
          // ),
            width: Helper.getScreenWidth(context),
            height: Helper.getScreenHeight(context),
      child: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: ClipShadow(
                clipper: CustomClipperAppBar(),
                boxShadow: [BoxShadow(
                    color: AppColor.secondary,
                    offset: Offset(0, 15),
                    blurRadius: 10),],
                child: Container(
                  width: double.infinity,
                  height: Helper.getScreenHeight(context)*0.5,decoration: ShapeDecoration(color: AppColor.primary,shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.2),bottomRight: Radius.circular(10.0)),
                ),
                ),
                  // child: SvgPicture.asset('images/bg.svg'),
                  ),
                ),
              ),
            Align(
              alignment: Alignment.center,
              child: SvgPicture.asset('images/Logo.svg'),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: Helper.getScreenHeight(context) * 0.3,
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(

                  children: [Flexible(
                    child: Text("An app to make Student Center more efficient An app to make Student Center more efficient An app to make Student Center more efficient",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    ),
                  ),
                    Spacer(),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            // navigation to home screen
                            Navigator.of(context).pushReplacementNamed(homePage.routeName);
                          },
                          child: Text("Get Started")
                      ),
                    ),
                    Spacer(),
                  ],

                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class CustomClipperAppBar extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Offset controlPoint = Offset(size.width * 0.2, size.height);
    Offset endPoint = Offset(size.width * 0.21, size.height * 0.9);
    Offset controlPoint2 = Offset(size.width * 0.24, size.height * 0.65);
    Offset endPoint2 = Offset(size.width * 0.44, size.height * 0.61);
    Offset controlPoint3 = Offset(size.width * 0.75, size.height * 0.58);
    Offset endPoint3 = Offset(size.width * 0.79, size.height * 0.9);
    Offset controlPoint4 = Offset(size.width * 0.8, size.height);
    Offset endPoint4 = Offset(size.width * 0.87, size.height);
    Path path = Path()
      ..lineTo(0, size.height)
      ..lineTo(size.width * 0.15, size.height)
      ..quadraticBezierTo(
        controlPoint.dx,
        controlPoint.dy,
        endPoint.dx,
        endPoint.dy,
      )
      ..quadraticBezierTo(
        controlPoint2.dx,
        controlPoint2.dy,
        endPoint2.dx,
        endPoint2.dy,
      )
      ..quadraticBezierTo(
        controlPoint3.dx,
        controlPoint3.dy,
        endPoint3.dx,
        endPoint3.dy,
      )
      ..quadraticBezierTo(
        controlPoint4.dx,
        controlPoint4.dy,
        endPoint4.dx,
        endPoint4.dy,
      )
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0);

    return path;
  }
 @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper){
   return true;
 }
}

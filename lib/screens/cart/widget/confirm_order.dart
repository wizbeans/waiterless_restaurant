import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ConfirmOrder extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Center(
          child:
              SafeArea( child:Column(
                children:[
                  Text('Success',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,

                  ),),
        Lottie.network('https://assets2.lottiefiles.com/packages/lf20_rhnmhzwj.json'),]
        )))

    );
  }
}

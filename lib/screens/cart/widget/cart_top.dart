import 'package:flutter/material.dart';
import 'package:order/constants/colors.dart';
import 'package:order/models/cart.dart';
import 'package:order/screens/cart/widget/confirm_order.dart';
import 'package:order/widgets/custom_app_bar.dart';

import '../main_cart.dart';

class CartTop extends StatelessWidget {
  // final Cart cart;
  // CartTop(this.cart);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            Icons.arrow_back_ios_new_outlined,
            Icons.favorite_outline,
            leftCallback: () => Navigator.of(context).pop(),

          ),
          Center(
            child: Text('Cart',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),),),
         CartItem(),


         Center(
           child:ElevatedButton(
           style: ButtonStyle(


           ),

            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ConfirmOrder()));


            },
            child:  Text('Complete Order'),
          ),),

],
    ),);
  }
}

import 'package:flutter/material.dart';
import 'package:order/constants/colors.dart';
import 'package:order/models/food.dart';
import 'package:order/screens/cart/widget/cart_top.dart';
import 'package:order/screens/detail/widget/food_detail.dart';
import 'package:order/screens/detail/widget/food_img.dart';
import 'package:order/widgets/custom_app_bar.dart';
class DetailPage extends StatelessWidget {
  final Food food;

  DetailPage(this.food);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              Icons.arrow_back_ios_new_outlined,
              Icons.favorite_outline,
              leftCallback: () => Navigator.of(context).pop(),

            ),
            FoodImg(food),
            FoodDetail(food),
          ],
        )
      ),

      floatingActionButton: Container(
        width: 100,
        height: 56,
        child: RawMaterialButton(
          fillColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          elevation: 2, onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CartTop()));

        },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.shopping_bag_outlined,
              color: Colors.black,
              size: 30,),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Text(food.quantity.toString(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,

                ),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

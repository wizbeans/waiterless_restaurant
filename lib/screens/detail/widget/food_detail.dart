import 'package:flutter/material.dart';
import 'package:order/constants/colors.dart';
import 'package:order/models/food.dart';
import 'package:order/screens/detail/widget/food_quantity.dart';

class FoodDetail extends StatelessWidget {
  final Food food;
  FoodDetail(this.food);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      color: kPrimaryLightColor,
      child: Column(
        children: [
          Text(
            food.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            )
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildIconText(Icons.access_time_outlined, Colors.deepPurple, food.waitTime),
              _buildIconText(Icons.star_outline, Colors.amber, food.score.toString()),
              _buildIconText(Icons.local_fire_department_outlined, Colors.red, food.cal),

            ],
          ),
          SizedBox(height: 30),
          FoodQuantity(food),
          SizedBox(height: 30),
          Row(
            children: [
              Text(
                'Custom Text',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 100,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context , index) =>
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(
                    children: [
                      Image.asset(food.ingredients[index].values.first,
                      width: 52,),
                      Text(food.ingredients[index].keys.first),
                    ],
                  )
                ),
                 separatorBuilder: (_, index) => SizedBox(width:15), itemCount: food.ingredients.length)
          )
        ],
      )
    );
  }

  Widget _buildIconText(IconData icon, Color color, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 20,
        ),
        Text(text,
        style: TextStyle(
          fontSize: 16
        ),)
      ],
    );

  }
}

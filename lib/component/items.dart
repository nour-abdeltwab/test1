import 'package:flutter/material.dart';

class food_items extends StatelessWidget {
  final String foodNo;
  const food_items({super.key, required this.foodNo});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(50))),
        ),
        SizedBox(
          width: 15,
        ),
        Container(
          child: Text(
            foodNo,
            style: TextStyle(fontSize: 25),
          ),
        ),
      ],
    );
  }
}

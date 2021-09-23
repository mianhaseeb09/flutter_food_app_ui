import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/constant/colors.dart';
import 'package:flutter_food_delivery_app/models/restaurent_model.dart';

class FoodList extends StatelessWidget {
  final int selected;
  final Function callback;
  final Restaurent restaurent;

  const FoodList(
      {Key? key,
      required this.selected,
      required this.callback,
      required this.restaurent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = restaurent.menu.keys.toList();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      height: 100,
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () => callback(index),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: selected == index ? kPrimaryColor : Colors.white),
                  child: Text(
                    category[index],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(
                width: 20,
              ),
          itemCount: category.length),
    );
  }
}

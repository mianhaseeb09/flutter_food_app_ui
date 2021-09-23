import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/models/restaurent_model.dart';
import 'package:flutter_food_delivery_app/widgets/food_item.dart';

class FoodListView extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController pageController;
  final Restaurent restaurent;

  const FoodListView(
      {Key? key,
      required this.selected,
      required this.callback,
      required this.pageController,
      required this.restaurent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = restaurent.menu.keys.toList();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
          controller: pageController,
          onPageChanged: (index) => callback(index),
          children: category
              .map((e) => ListView.separated(
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) => FoodItem(
                      food: restaurent.menu[category[selected]]![index]),
                  separatorBuilder: (_, index) => const SizedBox(
                        height: 15,
                      ),
                  itemCount: restaurent.menu[category[selected]]!.length))
              .toList()),
    );
  }
}

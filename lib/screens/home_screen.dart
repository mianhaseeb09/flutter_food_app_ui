import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/constant/colors.dart';
import 'package:flutter_food_delivery_app/models/restaurent_model.dart';
import 'package:flutter_food_delivery_app/widgets/custom_app_bar.dart';
import 'package:flutter_food_delivery_app/widgets/food_list.dart';
import 'package:flutter_food_delivery_app/widgets/food_list_view.dart';
import 'package:flutter_food_delivery_app/widgets/restaurent_info.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selected = 0;
  final restaurent = Restaurent.generateRestaurent();
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(
            leftIcon: Icons.arrow_back_ios_outlined,
            rightIcon: Icons.search_outlined,
          ),
          RestaurentInfo(),
          FoodList(
            selected: selected,
            callback: (int index) {
              setState(() {
                selected = index;
              });
              pageController.jumpToPage(index);
            },
            restaurent: restaurent,
          ),
          Expanded(
            child: FoodListView(
              selected: selected,
              callback: (int index) {
                setState(() {
                  selected = index;
                });
              },
              pageController: pageController,
              restaurent: restaurent,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            height: 60,
            child: SmoothPageIndicator(
              controller: pageController,
              count: restaurent.menu.length,
              effect: CustomizableEffect(
                  dotDecoration: DotDecoration(
                      width: 8,
                      height: 8,
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(8)),
                  activeDotDecoration: DotDecoration(
                    width: 10,
                    height: 10,
                    color: kBackground,
                    borderRadius: BorderRadius.circular(10),
                    dotBorder: const DotBorder(
                      color: kPrimaryColor,
                      padding: 2,
                      width: 2,
                    ),
                  )),
              onDotClicked: (index) => pageController.jumpToPage(index),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        elevation: 2,
        child: const Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black,
          size: 30,
        ),
      ),
    );
  }
}

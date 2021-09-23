import 'package:flutter_food_delivery_app/models/food.dart';

class Restaurent {
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String, List<Food>> menu;

  Restaurent(this.name, this.waitTime, this.distance, this.label, this.logoUrl,
      this.desc, this.score, this.menu);

  static Restaurent generateRestaurent() {
    return Restaurent(
      'Restaurent',
      '20-30 min',
      '2.4 km',
      'Restaurent',
      'assets/images/res_logo.png',
      'Orange Sandwiches is delicious',
      4.7,
      {
        'Recommend': Food.generateRecommendFoods(),
        'Popular': Food.generatePopularFoods(),
        'Noodles': [],
        'Pizza': [],
      },
    );
  }
}

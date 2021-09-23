class Food {
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool hightLight;

  Food(this.imgUrl, this.desc, this.name, this.waitTime, this.score, this.cal,
      this.price, this.quantity, this.ingredients, this.about,
      {this.hightLight = false});

  static List<Food> generateRecommendFoods() {
    return [
      Food(
          'assets/images/dish1.png',
          'No1. in Sales',
          'Soba Soap',
          '50 min',
          4.8,
          '325 kcal',
          12,
          1,
          [
            {
              'Noodles': 'assets/images/ingre1.png',
            },
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            },
          ],
          'Simply put, ramen is a japanese noodel soup,with',
          hightLight: true),
      Food(
          'assets/images/dish2.png',
          'Low fat',
          'Sai Us Samun phrai',
          '50 min',
          4.5,
          '325 kcal',
          18,
          1,
          [
            {
              'Noodles': 'assets/images/ingre1.png',
            },
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            },
          ],
          'Simply put, ramen is a japanese noodel soup,with',
          hightLight: false),
      Food(
          'assets/images/dish1.png',
          'Highly Recommended',
          'Ratatoullie Pasta',
          '30 min',
          4.9,
          '125 kcal',
          17,
          1,
          [
            {
              'Noodles': 'assets/images/ingre1.png',
            },
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            },
          ],
          'Simply put, ramen is a japanese noodel soup,with',
          hightLight: false),
    ];
  }

  static List<Food> generatePopularFoods() {
    return [
      Food(
          'assets/images/dish4.png',
          'Most Popular',
          'Tomato Chicken',
          '50 min',
          4.8,
          '325 kcal',
          12,
          1,
          [
            {
              'Noodles': 'assets/images/ingre1.png',
            },
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            },
          ],
          'Simply put, ramen is a japanese noodel soup,with',
          hightLight: true),
      Food(
          'assets/images/dish4.png',
          'Most Popular',
          'Tomato Chicken',
          '50 min',
          4.8,
          '325 kcal',
          12,
          1,
          [
            {
              'Noodles': 'assets/images/ingre1.png',
            },
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            },
          ],
          'Simply put, ramen is a japanese noodel soup,with',
          hightLight: true),
      Food(
          'assets/images/dish4.png',
          'Most Popular',
          'Tomato Chicken',
          '50 min',
          4.8,
          '325 kcal',
          12,
          1,
          [
            {
              'Noodles': 'assets/images/ingre1.png',
            },
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            },
          ],
          'Simply put, ramen is a japanese noodel soup,with',
          hightLight: true),
    ];
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/constant/colors.dart';
import 'package:flutter_food_delivery_app/models/restaurent_model.dart';

class RestaurentInfo extends StatelessWidget {
  final restaurent = Restaurent.generateRestaurent();

  RestaurentInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    restaurent.name,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            restaurent.waitTime,
                            style: const TextStyle(color: Colors.white),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        restaurent.distance,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.withOpacity(0.4)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(restaurent.label,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.withOpacity(0.4),
                          )),
                    ],
                  )
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  restaurent.logoUrl,
                  width: 80,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '"${restaurent.desc}"',
                style: const TextStyle(fontSize: 16),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star_outline,
                    color: kPrimaryColor,
                  ),
                  Text(
                    '${restaurent.score}',
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 15,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

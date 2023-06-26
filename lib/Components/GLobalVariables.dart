import 'package:flutter/material.dart';
import 'package:food_delivery_flutter_app/Screens/pocket_food.dart';
import 'package:food_delivery_flutter_app/pages/cart_page.dart';
import 'package:food_delivery_flutter_app/pages/favorite_page.dart';
import 'package:food_delivery_flutter_app/pages/landing_page.dart';
import 'package:food_delivery_flutter_app/pages/search_page.dart';


List foodpagelist = [
  const PocketFood(),
  const SearchPage(),
  const LandingPage(),
  const CartPage(),
  const FavoritePage(),
];
List<List<String>> searchTerms = [
  ["Turkmen Tagam", "Chillout", "Alpizza", "Maksatly"],
  ["lagman", "palow", "manty", "borek", "soup", "lahana", "lahmacun"],
  ["palow", "manty"]
];
final List<Map<String, dynamic>> localShopItems = [
  {
    "type":"local",
    "name": "Cherry",
    "image": "Assets/images/cherry.jpg",
    "prize": 12.0,
    "color": Colors.pink
  },
  {
    "type":"local",
    "name": "Watermelon",
    "image": "Assets/images/wmelon.jpg",
    "prize": 10.0,
    "color": Colors.green
  },
  {
    "type":"local",
    "name": "Melon",
    "image": "Assets/images/gulabi.jpg",
    "prize": 8.0,
    "color": Colors.yellow
  },
  {
    "type":"local",
    "name": "Grapes",
    "image": "Assets/images/sberry.jpg",
    "prize": 12.0,
    "color": Colors.red
  },
];
List<Map<String, dynamic>> mealsCartData = [
  {
    "type":"food",
    "name": "Samsa",
    "image": "Assets/images/samsa.jpg",
    "location": "Turkmenabat, Turkmen Tagam",
    "prize": 10.99,
    "deliveryTime": 25,
  },
  {
    "type":"food",
    "name": " Lagman",
    "image": "Assets/images/lagman.jpg",
    "location": " Turkmenabat, Chillout",
    "prize": 20.99,
    "deliveryTime": 30,
  },
  {
    "type":"food",
    "name": "Etli pizza",
    "image": "Assets/images/pizza.jpg",
    "location": "Turkmenabat, Alpizza",
    "prize": 69.99,
    "deliveryTime": 30,
  },
  {
    "type":"food",
    "name": "Shashlyk",
    "image": "Assets/images/kebab.jpg",
    "location": "Turkmenabat, Maksatly cafe",
    "prize": 20.99,
    "deliveryTime": 30,
  },
];
List<Map<String, dynamic>> restaurantsCartData = [
  {
    "name": " Mynasyp",
    "image": "Assets/images/borek.jpg",
    "location": "Turkmenabat, 3-nji k/e ",
    "rating": 4.4,
    "deliveryTime": 25,
  },
  {
    "name": " Chillout",
    "image": "Assets/images/lagman.jpg",
    "location": "Turkmenabat",
    "rating": 4.8,
    "deliveryTime": 25,
  },
  {
    "name": "Alpizza",
    "image": "Assets/images/pizza.jpg",
    "location": "Turkmenabat, Lebap sowda merkezi",
    "rating": 3.8,
    "deliveryTime": 30,
  },
  {
    "name": "Maksatly",
    "image": "Assets/images/kebab.jpg",
    "location": "Turkmenabat, Bahar k/e",
    "rating": 5.0,
    "deliveryTime": 30,
  },
];

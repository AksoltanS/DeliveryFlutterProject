import 'package:flutter/material.dart';

class FavoriteModel extends ChangeNotifier {
  final List<Map<String, dynamic>> _favoriteItems = [];

  get favoriteItems => _favoriteItems;

  //to add items to the cart function
  void addItemToFavoriteCart(Map<String, dynamic> item) {
    print(item["name"]);
    _favoriteItems.add(item);
    notifyListeners();
  }

  //to remove items from the cart function
  void removeItemFromFavoriteCart(int index) {
    _favoriteItems.removeAt(index);
    notifyListeners();
  }
}

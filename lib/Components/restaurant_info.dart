import 'package:flutter/material.dart';
import 'package:food_delivery_flutter_app/constants.dart';
import 'package:food_delivery_flutter_app/models/favorite_model.dart';
import 'package:food_delivery_flutter_app/models/food_model.dart';
import 'package:provider/provider.dart';

class RestaurantInfoCart extends StatefulWidget {
  const RestaurantInfoCart(
      {Key? key,
      required this.index,
      required this.title,
      required this.image,
      required this.deliveryTime,
      required this.prize,
      required this.press,
      required this.location,
      required this.isMeal,
      required this.itemMap})
      : super(key: key);
  final String title, image, location;
  final int deliveryTime;
  final double prize;
  final VoidCallback press;
  final bool isMeal;
  final int index;
  final Map<String,dynamic> itemMap;

  @override
  State<RestaurantInfoCart> createState() => _RestaurantInfoCartState();
}

class _RestaurantInfoCartState extends State<RestaurantInfoCart> {
  bool isliked = false;

  @override
  Widget build(BuildContext context) {
    double width = 0;
    if (widget.isMeal) {
      width = MediaQuery.of(context).size.width * 0.4;
    } else {
      width = MediaQuery.of(context).size.width * 0.85;
    }
    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(6)),
      onTap: widget.press,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 10,
                offset: const Offset(0, 3),
              ),
            ]),
        width: width,
        //height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              widget.image,
              width: width,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            Text(
              widget.title,
              maxLines: 1,
            ),
            Text(
              widget.location,
              style: const TextStyle(color: kBodyTextColor),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
              child: DefaultTextStyle(
                style: const TextStyle(color: Colors.black, fontSize: 12),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding / 2,
                          vertical: defaultPadding / 8),
                      decoration: BoxDecoration(
                        color: kActiveColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        widget.prize.toString(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {
                          Provider.of<FoodModel>(context, listen: false)
                              .addItemToCart(widget.index);
                        },
                        icon: const Icon(Icons.trolley)),
                    IconButton(
                        onPressed: () {
                          Provider.of<FavoriteModel>(context, listen: false)
                          .addItemToFavoriteCart(widget.itemMap);
                          setState(() {
                            isliked = !isliked;
                          });
                        },
                        icon: Icon(
                            isliked ? Icons.favorite : Icons.favorite_border)),
                    const Spacer(),
                    Text("${widget.deliveryTime} min"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

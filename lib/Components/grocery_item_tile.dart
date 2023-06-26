import 'package:flutter/material.dart';
import 'package:food_delivery_flutter_app/models/favorite_model.dart';
import 'package:provider/provider.dart';

class GroceryItemTile extends StatefulWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final MaterialColor color;
  final void Function()? onPressed;
  final Map<String,dynamic> itemMap;
  const GroceryItemTile(
      {super.key,
      required this.itemName,
      required this.itemPrice,
      required this.imagePath,
      required this.color,
      required this.itemMap,
      required this.onPressed});

  @override
  State<GroceryItemTile> createState() => _GroceryItemTileState();
}

class _GroceryItemTileState extends State<GroceryItemTile> {
  bool isliked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: widget.color[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.20,
              child: Image.asset(
                widget.imagePath,
                fit: BoxFit.fill,
              ),
            ),
            Text(widget.itemName),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  color: widget.color,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      '\$${widget.itemPrice}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: widget.onPressed,
                    icon: const Icon(Icons.add_card)),
                IconButton(
                    onPressed: () {
                      Provider.of<FavoriteModel>(context, listen: false)
                          .addItemToFavoriteCart(widget.itemMap);
                      setState(() {
                        isliked = !isliked;
                      });
                    },
                    icon:
                        Icon(isliked ? Icons.favorite : Icons.favorite_border)),
              ],
            )
          ],
        ),
      ),
    );
  }
}

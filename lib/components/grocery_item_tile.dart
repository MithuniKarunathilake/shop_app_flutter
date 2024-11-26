import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {

  final String itemName;
  final String itemPrice;
  final String imagePath;
  final String rating;
  void Function()? onPressed;

  GroceryItemTile({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.rating,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 6,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Image
          Image.asset(
            imagePath,
            height: 80,
            fit: BoxFit.cover,
          ),
          // Name
          Text(
            itemName,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          // Price
          MaterialButton(
            onPressed: () {
              // Example action: Print item name
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Added $itemName to the cart!'),
                  duration: const Duration(seconds: 2),
                ),
              );
            },
            color: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              'Rs.$itemPrice',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Rating
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.star, color: Colors.amber, size: 16),
              Text(
                rating.toString(),
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
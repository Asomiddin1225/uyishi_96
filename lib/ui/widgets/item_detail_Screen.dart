import 'package:flutter/material.dart';

class ItemDetailScreen extends StatelessWidget {
  final Map<String, String?> item; // Use String? to handle null values

  const ItemDetailScreen({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item["name"] ?? 'No Name'), // Provide a default value
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (item["image"] != null)
              Image.asset(item["image"].toString())
            else
              Placeholder(fallbackHeight: 200),
            SizedBox(height: 16),
            Text(
              item["name"] ?? 'No Name',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "Discount: ${item["discount"] ?? 'No Discount'}",
              style: TextStyle(fontSize: 18, color: Colors.redAccent),
            ),
            SizedBox(height: 8),
            Text(
              item["tavsilod"] ?? 'No Details Available',
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

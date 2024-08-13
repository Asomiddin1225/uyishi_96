import 'package:flutter/material.dart';
import 'item_detail_screen.dart';


final List<Map<String, String>> items = [
    {
      "image": "assets/images/siut.png",
      "name": "Smart watches",
      "discount": "-25%",
      "tavsilod":
          "A bag (also known regionally as a sack) is a common tool in the form of a non-rigid container, typically made of cloth, leather, paper, or plastic. The use of bags predates recorded history, with the earliest bags being lengths of animal skin, cotton, or woven plant fibers, folded up at the edges and secured in that shape with strings of the same material.[1] Bags can be used to carry items such as personal belongings, groceries, and other objects. They comes in various shapes and sizes, often equipped with handles or straps for easier carrying."
    },
    {
      "image": "assets/images/airpods.png",
      "name": "Headphones",
      "discount": "-15%",
      "tavsilod":
          "A bag (also known regionally as a sack) is a common tool in the form of a non-rigid container, typically made of cloth, leather, paper, or plastic. The use of bags predates recorded history, with the earliest bags being lengths of animal skin, cotton, or woven plant fibers, folded up at the edges and secured in that shape with strings of the same material.[1] Bags can be used to carry items such as personal belongings, groceries, and other objects. They comes in various shapes and sizes, often equipped with handles or straps for easier carrying."
    },
    {
      "image": "assets/images/laptops.png",
      "name": "Smartphones",
      "discount": "-10%",
      "tavsilod":
          "A bag (also known regionally as a sack) is a common tool in the form of a non-rigid container, typically made of cloth, leather, paper, or plastic. The use of bags predates recorded history, with the earliest bags being lengths of animal skin, cotton, or woven plant fibers, folded up at the edges and secured in that shape with strings of the same material.[1] Bags can be used to carry items such as personal belongings, groceries, and other objects. They comes in various shapes and sizes, often equipped with handles or straps for easier carrying."
    },
    {
      "image": "assets/images/iphone.png",
      "name": "Laptops",
      "discount": "-5%",
      "tavsilod":
          "A bag (also known regionally as a sack) is a common tool in the form of a non-rigid container, typically made of cloth, leather, paper, or plastic. The use of bags predates recorded history, with the earliest bags being lengths of animal skin, cotton, or woven plant fibers, folded up at the edges and secured in that shape with strings of the same material.[1] Bags can be used to carry items such as personal belongings, groceries, and other objects. They comes in various shapes and sizes, often equipped with handles or straps for easier carrying."
    },
    {
      "image": "assets/images/siut.png",
      "name": "Tablets",
      "discount": "-20%",
      "tavsilod":
          "A bag (also known regionally as a sack) is a common tool in the form of a non-rigid container, typically made of cloth, leather, paper, or plastic. The use of bags predates recorded history, with the earliest bags being lengths of animal skin, cotton, or woven plant fibers, folded up at the edges and secured in that shape with strings of the same material.[1] Bags can be used to carry items such as personal belongings, groceries, and other objects. They comes in various shapes and sizes, often equipped with handles or straps for easier carrying."
    }
  ];


class ItemListView extends StatelessWidget {
  final List<Map<String, String?>> items;

  const ItemListView({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemDetailScreen(item: item),
                ),
              );
            },
            child: Container(
              width: 140,
              height: 180,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[300]!),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 76,
                    height: 83,
                    child: Image.asset(item["image"].toString()),
                  ),
                  Text(item["name"] ?? 'No Name'),
                  SizedBox(height: 5),
                  Card(
                    color: const Color(0xffFFE3E3),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 2,
                        bottom: 2,
                      ),
                      child: Text(item["discount"] ?? 'No Discount'),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

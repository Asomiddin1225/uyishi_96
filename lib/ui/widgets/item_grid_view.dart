import 'package:flutter/material.dart';
import 'item_detail_screen.dart';

class ItemGridView extends StatelessWidget {
  final List<Map<String, String?>> items;

  const ItemGridView({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400, // Adjust the height according to your design
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of items per row
            crossAxisSpacing: 6,
            mainAxisSpacing: 6,
            childAspectRatio:
                0.75, // Aspect ratio to make the items taller or wider
          ),
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
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[300]!),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
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
      ),
    );
  }
}

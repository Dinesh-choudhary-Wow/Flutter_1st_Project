import 'package:flutter/material.dart';

import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 247, 235, 181),
      child: ListTile(
        onTap: () {
          // print("${item.name} pressed");
        },
        leading: Image.asset(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "Rs ${item.price}",
          textScaleFactor: 1.3,
          style: const TextStyle(
              color: Colors.deepOrange, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

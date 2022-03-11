import 'package:flutter/material.dart';
import 'package:flutter_newp/models/catalog.dart';
import 'package:flutter_newp/widgets/drawer.dart';
import 'package:flutter_newp/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatelogModel.items[0]);
    const String ShopIntro = "Welcome to New1 Mathaji textiles";

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Collections",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

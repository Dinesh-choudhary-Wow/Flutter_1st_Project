import 'package:flutter/material.dart';
import 'package:flutter_newp/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: constant_identifier_names
    const String ShopIntro = "Welcome to New1 Mathaji textiles";

    return Scaffold(
      appBar: AppBar(
        title: Text("Catelog Collections"),
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Text('$ShopIntro'),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

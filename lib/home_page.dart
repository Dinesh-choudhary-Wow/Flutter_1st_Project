import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String ShopIntro = "Welcome to Mathaji textiles";

    return Scaffold(
      appBar: AppBar(
        title: Text("Catelog"),
      ),
      body: Center(
        child: Container(
          child: Text('$ShopIntro'),
        ),
      ),
      drawer: Drawer(),
    );
  }
}

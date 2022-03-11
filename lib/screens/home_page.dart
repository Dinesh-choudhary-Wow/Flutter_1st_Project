import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String ShopIntro = "Welcome to New1 Mathaji textiles";

    return Scaffold(
      appBar: AppBar(
        title: Text("Catelog Collections"),
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

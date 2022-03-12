import 'package:flutter/material.dart';
import 'package:flutter_newp/models/catalog.dart';
import 'package:flutter_newp/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 117, 209, 245),
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "Rs ${catalog.price}/-".text.bold.xl3.red800.make(),
            ElevatedButton(
              onPressed: () {}, //style button if needed
              child: "Buy".text.make(),
            ).wh(80, 40)
          ],
        ).p32(),
      ),
      body: SafeArea(
          bottom: false,
          child: Column(children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.asset(catalog.image))
                .h40(context),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                width: context.screenWidth,
                color: Colors.white,
                child: Column(
                  children: [
                    catalog.name.text.xl4.color(MyTheme.darkPurple).bold.make(),
                    catalog.desc.text.xl.make(),
                    10.heightBox,
                  ],
                ).py64(),
              ),
            ))
          ])),
    );
  }
}

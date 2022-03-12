import 'package:flutter/material.dart';
import 'package:flutter_newp/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "Rs ${catalog.price}/-".text.bold.xl3.red800.make(),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(context.theme.buttonColor),
              ),
              onPressed: () {}, //style button if needed
              child: "Add to Cart".text.make(),
            ).wh(110, 40)
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
                color: context.cardColor,
                child: Column(
                  children: [
                    catalog.name.text.xl4
                        .color(context.accentColor)
                        .bold
                        .make(),
                    catalog.desc.text.xl.make(),
                    10.heightBox,
                    "There are two main categories of fibres used: natural fibre and man-made fibre Some natural fibres are linen, the first used historically, hemp."
                        .text
                        .make()
                        .p16()
                  ],
                ).py64(),
              ),
            ))
          ])),
    );
  }
}

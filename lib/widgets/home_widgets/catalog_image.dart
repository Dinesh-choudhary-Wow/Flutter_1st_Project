import 'package:flutter/material.dart';
import 'package:flutter_newp/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CalalogImage extends StatelessWidget {
  final String image;
  const CalalogImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(image)
        .box
        .rounded
        .p8
        .color(MyTheme.creamColor)
        .make()
        .p16()
        .w40(context);
  }
}

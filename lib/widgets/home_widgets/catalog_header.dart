import 'package:flutter/material.dart';
import 'package:flutter_newp/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Collections".text.xl5.bold.color(context.theme.accentColor).make(),
        "Top Collections".text.xl2.make(),
      ],
    );
  }
}

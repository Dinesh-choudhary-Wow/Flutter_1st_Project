import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_newp/models/catalog.dart';
import 'package:flutter_newp/widgets/home_widgets/catalog_header.dart';
import 'package:flutter_newp/widgets/themes.dart';
import 'dart:convert';
// ignore: import_of_legacy_library_into_null_safe
import 'package:velocity_x/velocity_x.dart';

import '../widgets/home_widgets/catalog_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: non_constant_identifier_names
  final String ShopIntro = "Welcome to New1 Mathaji textiles";
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyTheme.creamColor,
        body: SafeArea(
          child: Container(
              padding: Vx.m32,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CatalogHeader(),
                  if (CatalogModel.items != null &&
                      CatalogModel.items.isNotEmpty)
                    const CatalogList().py16().expand()
                  else
                    const CircularProgressIndicator().centered().expand(),
                ],
              )),
        ));
  }
}



// ListView.builder(
//                 itemCount: CatalogModel.items.length,
//                 itemBuilder: (context, index) => ItemWidget(
//                   item: CatalogModel.items[index],
//                 ),
//               )

// appBar: AppBar(
//         title: const Text(
//           "Collections",
//         ),
//       ),

//  Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
//             ? GridView.builder(
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   mainAxisSpacing: 16,
//                   crossAxisSpacing: 16,
//                 ),
//                 itemBuilder: (context, index) {
//                   final item = CatalogModel.items[index];
//                   return Card(
//                     clipBehavior: Clip.antiAlias,
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10)),
//                     child: GridTile(
//                       header: Container(
//                         child: Text(
//                           item.name,
//                           style: TextStyle(color: Colors.white),
//                         ),
//                         padding: EdgeInsets.all(12),
//                         decoration: BoxDecoration(
//                           color: Colors.deepOrange,
//                         ),
//                       ),
//                       child: Image.asset(item.image),
//                       footer: Container(
//                         child: Text(
//                           item.price.toString(),
//                           style: TextStyle(color: Colors.white),
//                         ),
//                         padding: EdgeInsets.all(12),
//                         decoration: BoxDecoration(
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//                 itemCount: CatalogModel.items.length,
//               )
//             : const Center(
//                 child: CircularProgressIndicator(),
//               ),
//       ),
//       drawer: const MyDrawer(),

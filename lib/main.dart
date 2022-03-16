import 'package:flutter/material.dart';
import 'package:flutter_newp/core/store.dart';
import 'package:flutter_newp/screens/cart_page.dart';
import 'package:flutter_newp/utils/routes.dart';
import 'package:flutter_newp/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'screens/home_page.dart';
import 'screens/login_page.dart';

void main() {
  runApp(VxState(store: MyStore(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.cartRoute: (context) => const CartPage(),
      },
    );
  }
}

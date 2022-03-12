import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      // fontFamily: GoogleFonts.poppins().fontFamily,
      primarySwatch: Colors.deepOrange,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
        toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
        titleTextStyle: Theme.of(context).textTheme.headline6,
      ));
  static ThemeData darkTheme(BuildContext context) => ThemeData(
      // fontFamily: GoogleFonts.lato().fontFamily,
      primarySwatch: Colors.deepOrange,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
        toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
        titleTextStyle: Theme.of(context).textTheme.headline6,
      ));

//Colors
  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkPurple = const Color.fromARGB(255, 6, 10, 66);
}

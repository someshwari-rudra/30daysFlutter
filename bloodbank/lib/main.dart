// import 'package:bloodbank/pages/home_page.dart';
import 'package:bloodbank/pages/home_page.dart';
import 'package:bloodbank/pages/login_page.dart';
import 'package:bloodbank/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily),
      home: loginPage(),
      routes: {MYRoutes.homeRoute: (context) => homePage()},
    );
  }
}

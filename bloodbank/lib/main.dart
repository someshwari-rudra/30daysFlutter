// import 'package:bloodbank/pages/home_page.dart';
import 'package:bloodbank/pages/home_page.dart';
import 'package:bloodbank/pages/login_page.dart';
import 'package:bloodbank/utils/routes.dart';
import 'package:bloodbank/widgets/themes.dart';
import 'package:flutter/material.dart';

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
      theme: MyTheme.LightTheme(context),
      home: loginPage(),
      initialRoute: MYRoutes.homeRoute,
      routes: {MYRoutes.homeRoute: (context) => homePage()},
    );
  }
}

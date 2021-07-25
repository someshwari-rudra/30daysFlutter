import 'package:bloodbank/widgets/drawer.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Catolog App"),
            ),
        body: Center(
          child: Container(
            child: Text("welcome to 30 days of flutter"),
          ),
        ),
        drawer: MyDrawer(),
    );
  }
}

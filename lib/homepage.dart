import 'package:flutter/material.dart';
import 'login_page.dart';
import 'drawer.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Catalog App"),
      ),
      drawer: MyDrawer(),
      body: Center(
          child: Container(
        child: new Text("Welcome "),
      )),
    );
  }
}

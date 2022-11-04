import 'package:flutter/material.dart';
import 'itemwidget.dart';
import 'login_page.dart';
import 'drawer.dart';
import 'models/catalog.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          title: Padding(
            padding: const EdgeInsets.only(left: 80.0),
            child: new Text("Catalog App"),
          ),
        ),
        drawer: MyDrawer(),
        body: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget();
          },
        ));
  }
}

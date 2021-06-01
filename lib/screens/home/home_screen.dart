import 'package:flutter/material.dart';
import 'package:poc_app/utils/app_theme.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.colorPrimary,
        title: Text("Home"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.shopping_basket,
              color: Colors.white,
              size: 30.0,
            ),
          ),
        ],
      ),
      body: Container(
        color: AppTheme.colorBackground,
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              )),
              color: Colors.white,
              child: Container()),
        ),
      ),
    );
  }
}

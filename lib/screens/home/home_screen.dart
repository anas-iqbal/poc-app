import 'package:flutter/material.dart';
import 'package:poc_app/utils/app_theme.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.colorPrimary,
        title: Text("Home"),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: width * 0.05),
            child: Icon(
              Icons.shopping_basket,
              color: Colors.white,
              size: 30.0,
            ),
          ),
        ],
      ),
      body: Container(
        color: AppTheme.colorPrimary,
        child: Padding(
          padding: EdgeInsets.only(top: height * 0.01),
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              )),
              color: AppTheme.colorBackground,
              child: Padding(
                padding: EdgeInsets.only(right: 18.0, left: 18.0, top: 18.0),
                child: SizedBox.expand(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "What Are You Craving for Today?",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                     
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}

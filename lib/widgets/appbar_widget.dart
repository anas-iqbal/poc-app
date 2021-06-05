import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poc_app/screens/baseket/basket_screen.dart';
import 'package:poc_app/screens/home/home_controller.dart';
import 'package:poc_app/utils/app_theme.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  final showBasket;
  AppBarWidget({@required this.title, this.showBasket = true});

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.find();
    double width = MediaQuery.of(context).size.width;
    return AppBar(
      backgroundColor: AppTheme.colorPrimary,
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      actions: [
        if (showBasket)
          Obx(() => Padding(
                padding: EdgeInsets.only(right: width * 0.05),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(BasketPage());
                      },
                      child: Icon(
                        Icons.shopping_basket,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                    if (homeController.basketList.isNotEmpty)
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          alignment: Alignment.center,
                          child: Text(''),
                        ),
                      )
                  ],
                ),
              )),
      ],
    );
  }
}

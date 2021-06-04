import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poc_app/screens/baseket/basket_controller.dart';
import 'package:poc_app/screens/detail/food_detail_screen.dart';
import 'package:poc_app/screens/home/home_controller.dart';
import 'package:poc_app/utils/app_theme.dart';
import 'package:poc_app/utils/loader_widget.dart';
import 'package:poc_app/widgets/appbar_widget.dart';
import 'package:poc_app/widgets/food_category_tile.dart';

class BasketPage extends StatelessWidget {
  final BasketController _basketController = Get.put(BasketController());
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Obx(
      () => LoaderWidget(
        isTrue: _basketController.isLoading.value,
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(AppBar().preferredSize.height),
              child: AppBarWidget(title: 'Baseket',showBasket: false,)),
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
                    padding:
                        EdgeInsets.only(right: 18.0, left: 18.0, top: 18.0),
                    child: SizedBox.expand(
                      child: _basketController
                              .homeController.selectedFoodsList.isNotEmpty
                          ? Expanded(
                              child: ListView.builder(
                                  padding: const EdgeInsets.all(8),
                                  itemCount: _basketController
                                      .homeController.selectedFoodsList.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return FoodCategoryTile(
                                        imgPath: _basketController
                                            .homeController
                                            .selectedFoodsList[index]
                                            .image,
                                        title: _basketController.homeController
                                            .selectedFoodsList[index].name);
                                  }),
                            )
                          : _basketController.homeController.isLoading.value
                              ? Container()
                              : Center(child: Text("No item found")),
                    ),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}

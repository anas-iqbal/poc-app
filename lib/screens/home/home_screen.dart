import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poc_app/screens/detail/food_detail_screen.dart';
import 'package:poc_app/screens/home/home_controller.dart';
import 'package:poc_app/utils/app_theme.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:poc_app/utils/loader_widget.dart';
import 'package:poc_app/widgets/food_category_tile.dart';

class MyHomePage extends StatelessWidget {
  final HomeController _homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Obx(
      () => LoaderWidget(
        isTrue: _homeController.isLoading.value,
        child: Scaffold(
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
                    padding:
                        EdgeInsets.only(right: 18.0, left: 18.0, top: 18.0),
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
                          Expanded(
                            child: ListView.builder(
                                padding: const EdgeInsets.all(8),
                                itemCount:
                                    _homeController.listCategories.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return GestureDetector(
                                    onTap: () {
                                      _homeController.selectedFoodCat =
                                          _homeController
                                              .listCategories[index].name;
                                      Get.to(FoodDetailPage());
                                    },
                                    child: FoodCategoryTile(
                                        imgPath: _homeController
                                            .listCategories[index].image,
                                        title: _homeController
                                            .listCategories[index].name),
                                  );
                                }),
                          )
                        ],
                      ),
                    ),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}

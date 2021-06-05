import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poc_app/screens/detail/food_detail_controller.dart';
import 'package:poc_app/utils/app_theme.dart';
import 'package:poc_app/utils/loader_widget.dart';
import 'package:poc_app/widgets/appbar_widget.dart';
import 'package:poc_app/widgets/food_category_tile.dart';
import 'package:poc_app/widgets/food_detail_tile.dart';

class FoodDetailPage extends StatelessWidget {
  final FoodDetailController _detailController =
      Get.put(FoodDetailController());
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Obx(
      () => LoaderWidget(
        isTrue: _detailController.isLoading.value,
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(AppBar().preferredSize.height),
              child: AppBarWidget(title: 'Detail')),
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
                            "Showing list of ${_detailController.homeController.selectedFoodCat}",
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
                                shrinkWrap: true,
                                padding: const EdgeInsets.all(8),
                                itemCount: _detailController.listDetail.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return FoodDetailTile(
                                    imgPath: _detailController
                                        .listDetail[index].image,
                                    title: _detailController
                                        .listDetail[index].name,
                                    onBasketClick: (selectedFood) {
                                      _detailController
                                          .homeController.selectedFoodsList
                                          .add(selectedFood);
                                    },
                                    onFavouriteClick: (selectedFood) {
                                      _detailController
                                          .markFavourite(selectedFood);
                                    },
                                    selectedFood:
                                        _detailController.listDetail[index],
                                    foodDetailController: _detailController,
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

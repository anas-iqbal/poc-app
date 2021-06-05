import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:poc_app/models/food_detail_response_model.dart';
import 'package:poc_app/screens/detail/food_detail_controller.dart';
import 'package:poc_app/utils/app_theme.dart';

class FoodDetailTile extends StatelessWidget {
  final String imgPath;
  final String title;
  final FoodCatDetails selectedFood;
  final Function(FoodCatDetails food) onBasketClick;
  final Function(FoodCatDetails food) onFavouriteClick;
  final FoodDetailController foodDetailController;
  FoodDetailTile({
    Key key,
    @required this.imgPath,
    @required this.title,
    @required this.onBasketClick,
    @required this.onFavouriteClick,
    @required this.selectedFood,
    @required this.foodDetailController,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: 200,
          child: Column(
            children: [
              CachedNetworkImage(
                fit: BoxFit.fill,
                height: 180,
                width: double.infinity,
                imageUrl: imgPath,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    Center(child: Text("Loading..")),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                child: Column(
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              onFavouriteClick(selectedFood);
                            },
                            child: Icon(
                              isFavourite()
                                  ? Icons.star_rate
                                  : Icons.star_border,
                              color: AppTheme.colorPrimary,
                              size: 30.0,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              onBasketClick(selectedFood);
                            },
                            child: Row(
                              children: [
                                Text("Add to ",
                                    style: TextStyle(
                                        color: AppTheme.colorPrimary,
                                        fontWeight: FontWeight.bold)),
                                Icon(
                                  Icons.shopping_basket,
                                  color: AppTheme.colorPrimary,
                                  size: 30.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  bool isFavourite() {
    if (foodDetailController.listFavourite != null) {
      var alreadyExist = foodDetailController.listFavourite.firstWhere(
          (x) => x.name.contains(selectedFood.name),
          orElse: () => null);
      if (alreadyExist != null) {
        return alreadyExist.isFavourite;
      }
    }
    return false;
  }
}

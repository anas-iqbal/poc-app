import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:poc_app/models/food_detail_response_model.dart';
import 'package:poc_app/screens/home/home_controller.dart';
import 'package:poc_app/services/food_service.dart';

class FoodDetailController extends GetxController {
  final FoodService _foodService = FoodService();
  final HomeController homeController = Get.find();
  final getStorage = GetStorage();

  var isLoading = false.obs;

  var listDetail = <FoodCatDetails>[].obs;

  @override
  void onInit() {
    super.onInit();
    getFoodCategoryDetail();
  }

  getFoodCategoryDetail() async {
    try {
      isLoading(true);
      var resp = await _foodService.getFoodDetailResp();
      var listOfAllFooods = resp.foodCatDetails;
      listDetail.value = listOfAllFooods
          .where((i) => i.category.contains(homeController.selectedFoodCat))
          .toList();
    } catch (e) {
      //ExceptionHandler(e);
    } finally {
      isLoading(false);
    }
  }

  addItemOnBasket(FoodCatDetails selectedFood) {
    var alreadyExist = homeController.basketList
        .firstWhere((x) => x.name == selectedFood.name, orElse: () => null);
    if (alreadyExist == null) {
      homeController.basketList.add(selectedFood);
    }
  }

  markFavourite(FoodCatDetails food) async {
    listDetail.forEach((element) {
      if (element.name == food.name) {
        element.isFavourite = !element.isFavourite;
        updateSavedList(food, element.isFavourite);
      }
    });
  }

  updateSavedList(FoodCatDetails selectedItem, bool updateFavStatus) async {
    var alreadyExist = homeController.listFavourite
        .firstWhere((x) => x.name == selectedItem.name, orElse: () => null);
    if (alreadyExist == null && selectedItem.isFavourite) {
      homeController.listFavourite.add(selectedItem);
    } else {
      if (!updateFavStatus) {
        homeController.listFavourite
            .removeWhere((item) => item.name == selectedItem.name);
      }
    }
    getStorage.write('favouriteItem', homeController.listFavourite);
    listDetail.refresh();
  }
}

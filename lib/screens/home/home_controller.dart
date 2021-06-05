import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:poc_app/models/food_caregory_model.dart';
import 'package:poc_app/models/food_detail_response_model.dart';
import 'package:poc_app/services/food_service.dart';

class HomeController extends GetxController {
  final FoodService _foodService = FoodService();

  var listCategories = <FoodCategories>[].obs;
  var basketList = <FoodCatDetails>[].obs;
  List<FoodCatDetails> listFavourite = [];

  var isLoading = false.obs;

  String selectedFoodCat = "";

  @override
  void onInit() {
    super.onInit();
    getFoodCategories();
    getMarkedFavouriteFoods();
  }

  getFoodCategories() async {
    try {
      isLoading(true);
      var resp = await _foodService.getFoodCategory();
      listCategories.value = resp.foodCategories;
    } catch (e) {
      //ExceptionHandler(e);
    } finally {
      isLoading(false);
    }
  }

  getMarkedFavouriteFoods() {
    final getStorage = GetStorage();
    listFavourite = [];
    var favMap = getStorage.read('favouriteItem');
    if (favMap != null) {
      for (var e in favMap) {
        var foodItem = FoodCatDetails.fromJson(e);
        listFavourite.add(foodItem);
      }
    }
  }
}

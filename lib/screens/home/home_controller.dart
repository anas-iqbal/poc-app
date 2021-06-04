import 'package:get/get.dart';
import 'package:poc_app/models/food_caregory_model.dart';
import 'package:poc_app/models/food_detail_response_model.dart';
import 'package:poc_app/services/food_service.dart';

class HomeController extends GetxController {
  final FoodService _foodService = FoodService();

  var listCategories = <FoodCategories>[].obs;
  var selectedFoodsList = <FoodCatDetails>[].obs;

  var isLoading = false.obs;

  String selectedFoodCat = "";

  @override
  void onInit() {
    super.onInit();
    getFoodCategories();
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
}

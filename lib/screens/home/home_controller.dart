import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:poc_app/models/food_caregory_model.dart';
import 'package:poc_app/services/food_service.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeController extends GetxController {
  final FoodService _foodService = FoodService();

  var listCategories = <FoodCategoriesModel>[].obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
  }
}

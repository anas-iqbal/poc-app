import 'package:get/get.dart';
import 'package:poc_app/models/food_detail_response_model.dart';
import 'package:poc_app/screens/home/home_controller.dart';

class BasketController extends GetxController {
  final HomeController homeController = Get.find();

  var isLoading = false.obs;
  var listDetail = <FoodCatDetails>[].obs;

  @override
  void onInit() {
    super.onInit();
  }

  removeItem(String title) {
    homeController.basketList.removeWhere((item) => item.name == title);
    homeController.basketList.refresh();
  }
}

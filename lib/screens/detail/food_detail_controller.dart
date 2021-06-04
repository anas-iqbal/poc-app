import 'package:get/get.dart';
import 'package:poc_app/models/food_detail_response_model.dart';
import 'package:poc_app/screens/home/home_controller.dart';
import 'package:poc_app/services/food_service.dart';

class FoodDetailController extends GetxController {
  final FoodService _foodService = FoodService();
  final HomeController homeController = Get.find();

  var isLoading = false.obs;
  var listCategories = <FoodCatDetails>[].obs;

  @override
  void onInit() {
    super.onInit();
    getFoodCategoryDetail();
  }

  getFoodCategoryDetail() async {
    try {
      isLoading(true);
      var resp = await _foodService.getFoodDetailResp();
      listCategories.value = resp.foodCatDetails;
    } catch (e) {
      //ExceptionHandler(e);
    } finally {
      isLoading(false);
    }
  }

  filterSelectedFoodCategory(){
    
  }
}

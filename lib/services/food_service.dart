import 'package:poc_app/fakeApis/fake_api_class.dart';
import 'package:poc_app/models/food_caregory_model.dart';

class FoodService {
  Future<FoodCategoriesModel> getFoodCategory() async {
    FakeApiClass fakeApiClass = FakeApiClass();
    var resp = await fakeApiClass.getFoodCategories();
    return FoodCategoriesModel.fromJson(resp);
  }
}

import 'package:poc_app/fakeApis/fake_api_class.dart';
import 'package:poc_app/models/food_caregory_model.dart';
import 'package:poc_app/models/food_detail_response_model.dart';

class FoodService {
  Future<FoodCategoriesModel> getFoodCategory() async {
    FakeApiClass fakeApiClass = FakeApiClass();
    var resp = await fakeApiClass.getFoodCategories();
    return FoodCategoriesModel.fromJson(resp);
  }

  Future<FoodDetailResponseModel> getFoodDetailResp() async {
    FakeApiClass fakeApiClass = FakeApiClass();
    var resp = await fakeApiClass.getFoodDetailFakeResp();
    return FoodDetailResponseModel.fromJson(resp);
  }
}

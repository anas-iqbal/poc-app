class FoodCategoriesModel {
  List<FoodCategories> foodCategories;

  FoodCategoriesModel({this.foodCategories});

  FoodCategoriesModel.fromJson(Map<String, dynamic> json) {
    if (json['foodCategories'] != null) {
      foodCategories = new List<FoodCategories>();
      json['foodCategories'].forEach((v) {
        foodCategories.add(new FoodCategories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.foodCategories != null) {
      data['foodCategories'] =
          this.foodCategories.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FoodCategories {
  String name;
  String image;

  FoodCategories({this.name, this.image});

  FoodCategories.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    return data;
  }
}

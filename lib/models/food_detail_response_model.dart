class FoodDetailResponseModel {
  List<FoodCatDetails> foodCatDetails;

  FoodDetailResponseModel({this.foodCatDetails});

  FoodDetailResponseModel.fromJson(Map<String, dynamic> json) {
    if (json['foodCatDetails'] != null) {
      foodCatDetails = new List<FoodCatDetails>();
      json['foodCatDetails'].forEach((v) {
        foodCatDetails.add(new FoodCatDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.foodCatDetails != null) {
      data['foodCatDetails'] =
          this.foodCatDetails.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FoodCatDetails {
  String name;
  String category;
  String image;
  bool isFavourite;

  FoodCatDetails({this.name, this.category, this.image, this.isFavourite});

  FoodCatDetails.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    category = json['category'];
    image = json['image'];
    isFavourite = json['isFavourite'] == null ? false : json['isFavourite'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['category'] = this.category;
    data['image'] = this.image;
    return data;
  }
}

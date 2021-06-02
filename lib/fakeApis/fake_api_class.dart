import 'dart:convert';

class FakeApiClass {
  // Cetrgory API
  Future<dynamic> getFoodCategories() async {
    await Future.delayed(const Duration(seconds: 5));
    String resp =
        "{\"foodCategories\":[{\"name\":\"https:\/\/images.unsplash.com\/photo-1560717869-37296557a131?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2850&q=80\",\"image\":\"Asian\"},{\"name\":\"https:\/\/images.unsplash.com\/photo-1565299624946-b28f40a0ae38?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=828&q=80\",\"image\":\"Italian\"},{\"name\":\"https:\/\/images.unsplash.com\/photo-1570466199120-80bba1eabad7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80\",\"image\":\"Maxican\"},{\"name\":\"https:\/\/images.unsplash.com\/photo-1526318896980-cf78c088247c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80\",\"image\":\"Chinnese\"},{\"name\":\"https:\/\/images.unsplash.com\/photo-1499028344343-cd173ffc68a9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80\",\"image\":\"Fast Food\"},{\"name\":\"https:\/\/images.unsplash.com\/photo-1484980972926-edee96e0960d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80\",\"image\":\"Turkish\"}]}";
    var result = jsonDecode(resp);
    return result;
  }
}

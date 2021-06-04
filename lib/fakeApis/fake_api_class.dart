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

  Future<dynamic> getFoodDetails() async {
    await Future.delayed(const Duration(seconds: 5));
    return getFoodDetailFakeResp();
  }

  dynamic getFoodDetailFakeResp() {
    {
      return {
        "foodCatDetails": [
          {
            "name": "Biryani",
            "category": "Asian",
            "image":
                "https://images.unsplash.com/photo-1584269600464-37b1b58a9fe7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1351&q=80"
          },
          {
            "name": "Curry",
            "category": "Asian",
            "image":
                "https://images.unsplash.com/photo-1476718406336-bb5a9690ee2a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80"
          },
          {
            "name": "Fried Rice",
            "category": "Asian",
            "image":
                "https://images.unsplash.com/photo-1589646937766-872f1d9a30a4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80"
          },
          {
            "name": "Haleem",
            "category": "Asian",
            "image":
                "https://images.unsplash.com/photo-1567529854338-fc097b962123?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80"
          },
          {
            "name": "Tikka",
            "category": "Asian",
            "image":
                "https://images.unsplash.com/photo-1598514983195-94d7470a4241?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80"
          },
          {
            "name": "Pizza",
            "category": "Italian",
            "image":
                "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=828&q=80"
          },
          {
            "name": "Pasta",
            "category": "Italian",
            "image":
                "https://images.unsplash.com/photo-1598866594230-a7c12756260f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1211&q=80"
          },
          {
            "name": "Risotto",
            "category": "Italian",
            "image":
                "https://images.unsplash.com/photo-1473093295043-cdd812d0e601?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80"
          },
          {
            "name": "Lasagna",
            "category": "Italian",
            "image":
                "https://images.unsplash.com/photo-1574894709920-11b28e7367e3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80"
          },
          {
            "name": "Polenta",
            "category": "Italian",
            "image":
                "https://images.unsplash.com/photo-1510693206972-df098062cb71?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1201&q=80"
          },
          {
            "name": "Tacos",
            "category": "Maxican",
            "image":
                "https://images.unsplash.com/photo-1599974579688-8dbdd335c77f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1371&q=80"
          },
          {
            "name": "Molotes",
            "category": "Maxican",
            "image":
                "https://images.unsplash.com/photo-1516685018646-549198525c1b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80"
          },
          {
            "name": "Sopes",
            "category": "Maxican",
            "image":
                "https://images.unsplash.com/photo-1529312266912-b33cfce2eefd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2734&q=80"
          },
          {
            "name": "Burrito",
            "category": "Maxican",
            "image":
                "https://images.unsplash.com/photo-1566740933430-b5e70b06d2d5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80"
          },
          {
            "name": "Elote",
            "category": "Maxican",
            "image":
                "https://images.unsplash.com/photo-1619221881992-78381378c20c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80"
          },
          {
            "name": "Tacos",
            "category": "Maxican",
            "image":
                "https://images.unsplash.com/photo-1565299585323-38d6b0865b47?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=828&q=80"
          },
          {
            "name": "Chowmein",
            "category": "Chinnese",
            "image":
                "https://images.unsplash.com/photo-1617622141573-2e00d8818f3f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80"
          },
          {
            "name": "Dumpings",
            "category": "Chinnese",
            "image":
                "https://images.unsplash.com/photo-1529042410759-befb1204b468?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=666&q=80"
          },
          {
            "name": "Noodles",
            "category": "Chinnese",
            "image":
                "https://images.unsplash.com/photo-1552611052-33e04de081de?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
          },
          {
            "name": "Kung Pao Chicken",
            "category": "Chinnese",
            "image":
                "https://images.unsplash.com/photo-1455619452474-d2be8b1e70cd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80"
          },
          {
            "name": "Soy Egg",
            "category": "Chinnese",
            "image":
                "https://images.unsplash.com/photo-1546069901-5ec6a79120b0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1355&q=80"
          },
          {
            "name": "Burger",
            "category": "Fast Food",
            "image":
                "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1202&q=80"
          },
          {
            "name": "Broast",
            "category": "Fast Food",
            "image":
                "https://images.unsplash.com/photo-1569058242253-92a9c755a0ec?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80"
          },
          {
            "name": "Chicken Wings",
            "category": "Fast Food",
            "image":
                "https://images.unsplash.com/photo-1426869981800-95ebf51ce900?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80"
          },
          {
            "name": "Sandwich",
            "category": "Fast Food",
            "image":
                "https://images.unsplash.com/photo-1559466273-d95e72debaf8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80"
          },
          {
            "name": "Mashed Potato",
            "category": "Fast Food",
            "image":
                "https://images.unsplash.com/photo-1554433607-66b5efe9d304?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
          }
        ]
      };
    }
  }
}

import 'dart:convert';
import 'package:food_recepies/models/recipe.dart';
import 'package:http/http.dart' as http;

class RecipeApi {

  static Future<List<Recipe>> getRecipe() async {
    var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list',
        {'limit': '24', 'start': '0', 'tag': 'list.recipe.popular'});

    final response = await http.get(uri, headers: {
      'X-RapidAPI-Key': '0db178aaa1mshc9584b5906f9c90p11744ejsnaec0ed9f26a9',
      'X-RapidAPI-Host': 'yummly2.p.rapidapi.com',
      'useQueryString': 'true',
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['feed']) {
      _temp.add(i['content']['details']);
    }

    return Recipe.recipesFromSnapshot(_temp);
  }
}

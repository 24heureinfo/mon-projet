import 'package:flutter/foundation.dart';
import 'package:flutter_app/recipe.dart';
import 'package:flutter_app/recipeDatabase.dart';

class FavoriteChangeNotifier with ChangeNotifier {
  Recipe recipe;

  FavoriteChangeNotifier(this.recipe);

  bool get isFavorited => recipe.isFavorite;

  int get favoriteCount => recipe.favoriteCount + (recipe.isFavorite ? 1 : 0);

  set isFavorited(bool isFavorited) {
    recipe.isFavorite = isFavorited;
    RecipeDataBase.instance.updateRecipe(recipe);
    notifyListeners();
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/models/meal.dart';



// this is the provider setup that is used for dynamic data 
class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
// setup Intial State
FavoriteMealsNotifier() :  super([]);


// Create a method that can modify the state
bool toggleMealFavoriteStatus(Meal meal){
final mealIsFavorite = state.contains(meal);

if (mealIsFavorite) {
  state = state.where((m) => m.id != meal.id ).toList();
  return false;
} else{
 state = [...state, meal];
return true;
}

}
}

final favoriteMealsProvider = StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>((ref) {
 return FavoriteMealsNotifier();
});
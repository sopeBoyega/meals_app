import "package:meals_app/data/dummy_data.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

// This provider provides static data therefore the setup is very simple 
// Compared to provider that provides dynamic data
final mealsProvider = Provider((ref) {
  return dummyMeals;
});
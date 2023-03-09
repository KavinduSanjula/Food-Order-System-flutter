import 'package:app_project/models/food_item.dart';

class FoodList{

  static List<FoodItem> foods = new List.empty(growable: true);


  static addFoodItem(FoodItem food){
    foods.add(food);
    food.printItem();
  }

  static List<FoodItem> getFoods() {
    return foods;
  }

}
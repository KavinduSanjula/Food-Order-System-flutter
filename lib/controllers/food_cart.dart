import 'package:app_project/models/food_item.dart';

class FoodCart{
  
  static List<FoodCheckout> foods = List.empty(growable: true);

  static List<FoodCheckout> getCheckoutList(){
    return foods;
  }

  static void addItem(FoodItem item){
    foods.add(FoodCheckout(item));
  }
}
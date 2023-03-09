import 'package:app_project/components/food-card.dart';
import 'package:app_project/controllers/food_cart.dart';
import 'package:app_project/controllers/food_list.dart';
import 'package:app_project/models/food_item.dart';
import 'package:flutter/material.dart';

class OrderrsList extends StatefulWidget {
  const OrderrsList({super.key});

  @override
  State<OrderrsList> createState() => _OrderrsListState();
}

class _OrderrsListState extends State<OrderrsList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Order Now"),
          actions: [
            Padding(padding: EdgeInsets.only(right: 15.0, top: 20),
            child: Text(
              "${FoodCart.foods.length}",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),)
          ],
        ),
        body: ListView.builder(
          itemCount: FoodList.getFoods().length,
          itemBuilder: (context, index) {
            var foods = FoodList.getFoods();
            return FoodCard(foods[index]);
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/checkout');
          },
          child: Icon(Icons.check),
        ),
      ),
    );
  }
}
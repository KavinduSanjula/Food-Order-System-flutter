import 'package:app_project/components/food-card.dart';
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
          actions: const [
            Padding(padding: EdgeInsets.only(right: 15.0, top: 20),
            child: Text(
              "5",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),)
          ],
        ),
        body: Column(
          children: [
            FoodCard(
              title: "Fride Rice",
              price: "\$ 100.0",
              desc: "This is a short description about the food. you can check it out now",
              image: "assets/images/flash-image-1.jpg",
            ),
            FoodCard(
              title: "Fride Rice",
              price: "\$ 100.0",
              desc: "This is a short description about the food. you can check it out now",
              image: "assets/images/flash-image-1.jpg",
            ),
            FoodCard(
              title: "Fride Rice",
              price: "\$ 100.0",
              desc: "This is a short description about the food. you can check it out now",
              image: "assets/images/flash-image-1.jpg",
            )
          ],
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
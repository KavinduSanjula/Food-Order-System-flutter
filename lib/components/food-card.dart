import 'package:app_project/components/button.dart';
import 'package:flutter/material.dart';


FoodCard({title, price, desc, image}){

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      margin: EdgeInsets.only(top: 15),

      decoration: BoxDecoration(
        color: Colors.amber.shade50,
        borderRadius: BorderRadius.circular(10)
      ),
      width: double.infinity,
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
              ),
              ),
              Text(
                price,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.red
              ),
            ),
            ],
          ),

          const SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80.0,
                height: 80.0,
                color: Colors.red,
                child: Image.asset(
                "assets/images/flash-image-1.jpg",
                fit: BoxFit.fill,
                width: 80.0,
                height: 80.0,
              ),
              ),
              SizedBox(
                width: 150,
                child: Text(
                desc,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
              ),
              Container(
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.amber.shade300,
                  borderRadius: BorderRadius.circular(25)
                ),
                child: const Icon(Icons.shopping_cart),
              )
            ],
          )
        ],
      ),
    ),
  );

}


FoodCardCheckout({title, price, image}){

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      margin: EdgeInsets.only(top: 15),

      decoration: BoxDecoration(
        color: Colors.amber.shade50,
        borderRadius: BorderRadius.circular(10)
      ),
      width: double.infinity,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),

              Container(
                  width: 80.0,
                  height: 80.0,
                  color: Colors.red,
                  child: Image.asset(
                  "assets/images/flash-image-1.jpg",
                  fit: BoxFit.fill,
                  width: 80.0,
                  height: 80.0,
                ),
              ),

            ],
          ),

          const Text(
              "0",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.red
            ),
          ),

          Row(
            children: [

              PrimaryIconButton(icon: Icon(Icons.add)),
              PrimaryIconButton(icon: Icon(Icons.remove)),

            ],
          ),
      ]
     ) 
    )
  );
}
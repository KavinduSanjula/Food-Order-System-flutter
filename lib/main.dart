import 'package:app_project/controllers/food_list.dart';
import 'package:app_project/models/food_item.dart';
import 'package:app_project/screens/checkout-screen.dart';
import 'package:app_project/screens/flash-screen.dart';
import 'package:app_project/screens/home-screen.dart';
import 'package:app_project/screens/orders-list-screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.amber,
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => MyHomePage(title: "Hello World"),
        '/orders-list':(context) => OrderrsList(),
        '/checkout':(context) => CheckoutPage(),
      }, // const MyHomePage(title: "Hello"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool isLoading = true;

  @override
  void initState(){
    super.initState();
    initialization();
  }


  void initialization() async {

    var food0 = FoodItem(title: "Fride Rice", desc: "This is a short description about the food.", price: 500.0, imagePath: "assets/images/fried-rice.jpg");
    var food1 = FoodItem(title: "Burger", desc: "This is a short description about the food.", price: 200.0, imagePath: "assets/images/burger.jpg");
    var food2 = FoodItem(title: "Rice", desc: "This is a short description about the food.", price: 300.0, imagePath: "assets/images/rice.png");
    var food3 = FoodItem(title: "Pizza", desc: "This is a short description about the food.", price: 1200.0, imagePath: "assets/images/pizza.jpg");

    FoodList.addFoodItem(food0);
    FoodList.addFoodItem(food1);
    FoodList.addFoodItem(food2);
    FoodList.addFoodItem(food3);

    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      isLoading = false;
    });

  }

  @override
  Widget build(BuildContext context) {

    return isLoading ?  const FlashScreen() : const HomePage();
    
  }
}

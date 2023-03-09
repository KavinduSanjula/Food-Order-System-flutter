class FoodItem{

  String title;
  String desc;
  double price;
  String imagePath;

  FoodItem(
    {
      required this.title,
      required this.desc,
      required this.price,
      required this.imagePath
    }
  );

  printItem(){
    print(title);
  }
}

class FoodCheckout{

  FoodItem item;
  int count = 1;

  FoodCheckout(this.item);

}
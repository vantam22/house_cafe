class CoffeeModel {
  int? id;
  String? imageStr;
  String? name;
  double? price;
  int? quantity;
  double? rating;

  double get total => (price ?? 0.0) * (quantity ?? 0);
}

List<CoffeeModel> coffees = [
  CoffeeModel()
    ..id = 1
    ..imageStr = 'assets/images/c1.jpg'
    ..name = 'Fried Chicken'
    ..price = 20.0
    ..quantity = 2
    ..rating = 4.5,
  CoffeeModel()
    ..id = 2
    ..imageStr = 'assets/images/c2.jpg'
    ..name = 'Cheese Sandwich'
    ..price = 18.0
    ..quantity = 3
    ..rating = 5,
  CoffeeModel()
    ..id = 3
    ..imageStr = 'assets/images/c3.jpg'
    ..name = 'Egg Pasta'
    ..price = 15.0
    ..quantity = 1
    ..rating = 5,
  CoffeeModel()
    ..id = 4
    ..imageStr = 'assets/images/c4.jpg'
    ..name = 'Fried Chicken'
    ..price = 20.0
    ..quantity = 2
    ..rating = 4.5,
  CoffeeModel()
    ..id = 5
    ..imageStr = 'assets/images/c5.jpg'
    ..name = 'Cheese Sandwich'
    ..price = 18.0
    ..quantity = 3
    ..rating = 5,
  CoffeeModel()
    ..id = 6
    ..imageStr = 'assets/images/c6.jpg'
    ..name = 'Egg Pasta'
    ..price = 15.0
    ..quantity = 1
    ..rating = 4.5,
  CoffeeModel()
    ..id = 7
    ..imageStr = 'assets/images/c7.jpg'
    ..name = 'Egg Pasta'
    ..price = 15.0
    ..quantity = 1
    ..rating = 4.5,
  CoffeeModel()
    ..id = 8
    ..imageStr = 'assets/images/c8.jpg'
    ..name = 'Egg Pasta'
    ..price = 15.0
    ..quantity = 1
    ..rating = 4.5,
];

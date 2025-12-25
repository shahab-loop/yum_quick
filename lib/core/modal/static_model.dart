class SmallContainerModel {
  final String text;
  final String imagePath;

  SmallContainerModel({required this.text, required this.imagePath});
}

class RestaurantDishModel {
  final String restaurantName;
  final String dishName;
  final String imagePath;
  final double price;
  final String description;

  RestaurantDishModel({
    required this.restaurantName,
    required this.dishName,
    required this.imagePath,
    required this.price,
    required this.description,
  });
}

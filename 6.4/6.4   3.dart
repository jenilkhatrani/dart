import 'dart:io';

class FoodItem {
  final String name;
  final double price;

  FoodItem({required this.name, required this.price});
}

void main() {
  // Sample food item data as List of Maps
  List<Map<String, dynamic>> foodItemsData = [
    {'name': 'Burger', 'price': 150.0},
    {'name': 'Pizza', 'price': 250.0},
    {'name': 'Pasta', 'price': 180.0},
    {'name': 'Sandwich', 'price': 120.0},
    // Add more food items as needed
  ];

  // Convert List of Maps to List of FoodItem models
  List<FoodItem> foodItems = foodItemsData
      .map((foodItemMap) => FoodItem(
    name: foodItemMap['name'],
    price: foodItemMap['price'].toDouble(),
  ))
      .toList();

  while (true) {
    print('Menu:');
    print('1. View Food Items in Ascending Order');
    print('2. View Food Items in Descending Order');
    print('3. Filter Food Items by Price Range');
    print('4. Exit');
    print('Enter your choice:');

    var choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        foodItems.sort((a, b) => a.price.compareTo(b.price));
        _displayFoodItems(foodItems);
        break;
      case 2:
        foodItems.sort((a, b) => b.price.compareTo(a.price));
        _displayFoodItems(foodItems);
        break;
      case 3:
        print('Enter minimum price:');
        var minPrice = double.parse(stdin.readLineSync()!);
        print('Enter maximum price:');
        var maxPrice = double.parse(stdin.readLineSync()!);
        var filteredItems = foodItems
            .where((foodItem) => foodItem.price >= minPrice && foodItem.price <= maxPrice)
            .toList();
        _displayFoodItems(filteredItems);
        break;
      case 4:
        print('Exiting...');
        return;
      default:
        print('Invalid choice. Please enter a number between 1 and 4.');
        break;
    }
  }
}

void _displayFoodItems(List<FoodItem> foodItems) {
  if (foodItems.isEmpty) {
    print('No food items found.');
    return;
  }
  print('Food Items:');
  foodItems.forEach((foodItem) {
    print('${foodItem.name}: \$${foodItem.price}');
  });
}
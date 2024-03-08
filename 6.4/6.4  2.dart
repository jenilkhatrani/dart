class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});

  @override
  String toString() {
    return 'Product{name: $name, price: $price}';
  }
}

void main() {

  List<Map<String, dynamic>> productsData = [
    {'name': 'Product A', 'price': 25.0},
    {'name': 'Product B', 'price': 15.0},
    {'name': 'Product C', 'price': 30.0},
    {'name': 'Product D', 'price': 20.0},
    // Add more products as needed
  ];

  // Convert List of Maps to List of Product models
  List<Product> products = productsData
      .map((productMap) => Product(
    name: productMap['name'],
    price: productMap['price'].toDouble(),
  ))
      .toList();

  // Sort products by price in descending order
  products.sort((a, b) => b.price.compareTo(a.price));

  // Print sorted product data
  print('Sorted Products (Price Descending Order):');
  products.forEach(print);
}
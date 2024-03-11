import 'dart:io';

class Customer {
  int custId;
  String custName;
  String custContact;
  List<Product> custCart = [];

  Customer(this.custId, this.custName, this.custContact);

  void addToCart(Product product) {
    custCart.add(product);
  }

  double calculateTotalBill() {
    double totalBill = 0;
    for (var product in custCart) {
      totalBill += product.proPrice * product.proQty;
    }
    return totalBill;
  }
}

class Product {
  int proId;
  String proName;
  int proQty;
  double proPrice;

  Product(this.proId, this.proName, this.proQty, this.proPrice);
}

void main() {
  List<Customer> customers = [];
  int customerId = 1;

  while (true) {
    print("1. Add Customer");
    print("2. Add Product to Customer's Cart");
    print("3. Calculate Bill and Apply Discount");
    print("4. Search Customer by ID");
    print("5. Exit");

    stdout.write("Enter your choice: ");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print("Enter Customer Details:");
        stdout.write("Name: ");
        String name = stdin.readLineSync()!;
        stdout.write("Contact: ");
        String contact = stdin.readLineSync()!;
        customers.add(Customer(customerId++, name, contact));
        break;
      case 2:
        if (customers.isEmpty) {
          print("No customers available. Please add a customer first.");
          break;
        }
        print("Enter Product Details:");
        stdout.write("ID: ");
        int id = int.parse(stdin.readLineSync()!);
        stdout.write("Name: ");
        String name = stdin.readLineSync()!;
        stdout.write("Quantity: ");
        int qty = int.parse(stdin.readLineSync()!);
        stdout.write("Price: ");
        double price = double.parse(stdin.readLineSync()!);

        Product product = Product(id, name, qty, price);

        print("Select Customer:");
        for (var customer in customers) {
          print("${customer.custId}. ${customer.custName}");
        }
        stdout.write("Enter Customer ID: ");
        int custId = int.parse(stdin.readLineSync()!) - 1;
        customers[custId].addToCart(product);
        break;
      case 3:
        if (customers.isEmpty) {
          print("No customers available. Please add a customer first.");
          break;
        }
        print("Select Customer:");
        for (var customer in customers) {
          print("${customer.custId}. ${customer.custName}");
        }
        stdout.write("Enter Customer ID: ");
        int custId = int.parse(stdin.readLineSync()!) - 1;
        Customer customer = customers[custId];
        double totalBill = customer.calculateTotalBill();
        double discount = 0;

        if (totalBill >= 500 && totalBill < 1500) {
          discount = totalBill * 0.1;
        } else if (totalBill >= 1500 && totalBill < 3500) {
          discount = totalBill * 0.2;
        } else if (totalBill >= 3500 && totalBill < 6500) {
          discount = totalBill * 0.25;
        } else if (totalBill >= 6500) {
          discount = totalBill * 0.3;
        }

        double finalAmount = totalBill - discount;

        print("Total Bill: \$${totalBill.toStringAsFixed(2)}");
        print("Discount: \$${discount.toStringAsFixed(2)}");
        print("Final Amount: \$${finalAmount.toStringAsFixed(2)}");
        break;
      case 4:
        if (customers.isEmpty) {
          print("No customers available. Please add a customer first.");
          break;
        }
        stdout.write("Enter Customer ID: ");
        int custId = int.parse(stdin.readLineSync()!) - 1;
        Customer customer = customers[custId];

        print("Customer ID: ${customer.custId}");
        print("Name: ${customer.custName}");
        print("Contact: ${customer.custContact}");
        print("Products in Cart:");
        for (var product in customer.custCart) {
          print(
              "ID: ${product.proId}, Name: ${product.proName}, Quantity: ${product.proQty}, Price: \$${product.proPrice}");
        }
        double totalBill = customer.calculateTotalBill();
        double discount = 0;

        if (totalBill >= 500 && totalBill < 1500) {
          discount = totalBill * 0.1;
        } else if (totalBill >= 1500 && totalBill < 3500) {
          discount = totalBill * 0.2;
        } else if (totalBill >= 3500 && totalBill < 6500) {
          discount = totalBill * 0.25;
        } else if (totalBill >= 6500) {
          discount = totalBill * 0.3;
        }

        double finalAmount = totalBill - discount;

        print("Total Bill: \$${totalBill.toStringAsFixed(2)}");
        print("Discount: \$${discount.toStringAsFixed(2)}");
        print("Final Amount: \$${finalAmount.toStringAsFixed(2)}");
        break;
      case 5:
        print("Exiting program...");
        return;
      default:
        print("Invalid choice!");
    }
  }
}
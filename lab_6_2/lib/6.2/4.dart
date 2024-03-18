import 'dart:io';

class Item {

  int quantity;
  double tax;
  double discount;
  String itemNumber;
  String itemName;

  Item(this.itemNumber, this.itemName, this.quantity, this.tax, this.discount);
}

class SupermarketBillingSystem {
  List<Item> items = [];

  void addItem(Item item) {
    items.add(item);
  }

  void displayAllRecords() {
    if (items.isEmpty) {
      print("No records available.");
      return;
    }
    items.sort((a, b) => a.itemNumber.compareTo(b.itemNumber));
    print("Item Number\tItem Name\tQuantity\tTax\tDiscount");
    for (var item in items) {
      print(
          "${item.itemNumber}\t\t${item.itemName}\t\t${item.quantity}\t\t${item.tax}\t${item.discount}");
    }
  }
}

void main() {

  SupermarketBillingSystem billingSystem = SupermarketBillingSystem();

  print("Enter User ID:");
  String userId = stdin.readLineSync()!;
  print("Enter Password:");
  String password = stdin.readLineSync()!;

  if (userId == "my cart" && password == "#00123#") {

    Item item1 = Item("001", "cheez", 2, 5.0, 0.0);
    Item item2 = Item("002", "toast", 1, 3.0, 0.0);
    Item item3 = Item("003", "mik", 3, 10.0, 0.0);

    billingSystem.addItem(item1);
    billingSystem.addItem(item2);
    billingSystem.addItem(item3);

    billingSystem.displayAllRecords();
  } else {
    print("Invalid User ID or Password. Access Denied!");
  }
}

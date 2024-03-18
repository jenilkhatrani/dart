
import 'dart:io';

// Function to add two numbers
void main() {
  double result;
  double num1, num2;
  String operation;

  print("Enter first number : ");
  num1 = double.parse(stdin.readLineSync()!);

  print("Enter second number : ");
  num2 = double.parse(stdin.readLineSync()!);

  print("Enter operation : ");
  operation = stdin.readLineSync()!;

  switch (operation) {

    case '-':
      result = subtract(num1, num2);
      break;

    case '*':
      result = multiply(num1, num2);
      break;

    case '+':
      result = add(num1, num2);
      break;

    case '/':
      result = divide(num1, num2);
      break;

    default:
      print("Invalid operation!");
      return;
  }

  print("Result: $result");
}
double add(double num1, double num2) {
  return num1 + num2;
}

// Function to subtract two numbers
double subtract(double num1, double num2) {
  return num1 - num2;
}

// Function to multiply two numbers
double multiply(double num1, double num2) {
  return num1 * num2;
}

// Function to divide two numbers
double divide(double num1, double num2) {
  if (num2 != 0) {
    return num1 / num2;
  } else {
    print("Error: Cannot divide by zero!");
    return double.nan;
  }
}



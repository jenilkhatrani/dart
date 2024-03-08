import 'dart:convert';
import 'dart:io';

class generate
{
  void input(int n1,n2)
  {
    for (int i = n1; i <= n2; i++) {
      print("Multiplication table for $i:");

      for (int j = 1; j <= 10; j++) {
        int result = i * j;
        print("$i x $j = $result");
      }

      print("");
    }
  }

}

void main()

{
  //1
print('helloo dart');


//2

int a,b,c;
a=10;
b=20;
c=a+b;
print(c);


//3
  int x,y,z;
  x=2;
  y=5;
  z=x+y;
  print(z);

  //4
  int num=10;

  for(var i=1;i<=10;++i)
  {
    print('$num*$i=$num');
  }


  //5
  generate Generate =generate();
  Generate.input(2, 5);

  //6
  int j,cube;
  j=2;
  cube=j*j*j;
  print(cube);

  //7
  print("Enter your first name:");
  String firstName = stdin.readLineSync()!;

  print("Enter your last name:");
  String lastName = stdin.readLineSync()!;

  print("Your full name is: $firstName $lastName");


  //8

  print("Enter the principal amount:");
  double principal = double.parse(stdin.readLineSync()!);

  print("Enter the rate of interest (in percentage):");
  double rateOfInterest = double.parse(stdin.readLineSync()!);

  print("Enter the time (in years):");
  double time = double.parse(stdin.readLineSync()!);

  double simpleInterest = (principal * rateOfInterest * time) / 100;

  print("Simple Interest: $simpleInterest");


  //10

  print("Enter a number:");
  int number = int.parse(stdin.readLineSync()!);


  if (number % 2 == 0) {
    print("$number is an even number.");
  } else {
    print("$number is an odd number.");
  }
  //9
  print('enter operaqtion');
  String  operation = stdin.readLineSync()!;

  print('enter first number : ');
  double number1=double.parse(stdin.readLineSync()!);

  print('enter second number : ');
  double number2=double.parse(stdin.readLineSync()!);

  double result=0.0;

  switch(operation)
      {
    case'+':
      result=number1+number2;
      print("Result: $result");
      break;

    case'-':
      result=number1-number2;
      print("Result: $result");
      break;

    case'*':
      result=number1*number2;
      print("Result: $result");
      break;

    case '/':
      if (number2 != 0) {
        result = number1 / number2;
        print("Result: $result");
      } else {
        print("Error: Division by zero is not allowed.");
        return;
      }
      break;
    default:
      print("Invalid operation. Please choose +, -, *, or /.");
      return;




      }
  }





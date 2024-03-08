void main() {
  try
  {
    int result = 10 ~/ 0; //try replacing 0 with 2 or 5 to not catch the catch block
    print('Result: $result');
  }
  catch (e)
  {
    print('Exception caught: $e');
  }
}
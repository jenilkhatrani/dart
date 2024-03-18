
double calculateSuccessPercentage(
    { int occupation1 = 0,
      int occupation2 = 0,
      int occupation3 = 0,
      int occupation4 = 0,
      int occupation5 = 0}
    )
{
  int totalMarks = occupation1 + occupation2 + occupation3 + occupation4 + occupation5;
  double percentage = (totalMarks / (5 * 100)) * 100;
  return percentage;
}

void main() {

  int marks1 = 80;
  int marks2 = 90;
  int marks3 = 85;
  double successPercentage = calculateSuccessPercentage(occupation1: marks1, occupation2: marks2, occupation3: marks3);
  print('Percentage of success  software developer: $successPercentage%');
}

import 'dart:io';

class Train {
  String trainNumber;
  String trainName;
  String source;
  String destination;
  String trainTime;

  Train(this.trainNumber, this.trainName, this.source, this.destination, this.trainTime);
}

class ReservationSystem {
  List<Train> trains = [];

  void addTrain(Train train) {
    trains.add(train);
  }

  void displayTrainByNumber(String trainNumber) {
    bool found = false;
    for (Train train in trains) {
      if (train.trainNumber == trainNumber) {
        print("Train Number: ${train.trainNumber}");
        print("Train Name: ${train.trainName}");
        print("Source: ${train.source}");
        print("Destination: ${train.destination}");
        print("Train Time: ${train.trainTime}");
        found = true;
        break;
      }
    }
    if (!found) {
      print("Train with number $trainNumber not found.");
    }
  }
}

void main() {
  ReservationSystem reservationSystem = ReservationSystem();

  Train train1 = Train("12345", "Express", "City A", "City B", "10:00 AM");
  Train train2 = Train("67890", "Superfast", "City B", "City C", "2:00 PM");
  Train train3 = Train("54321", "Local", "City C", "City D", "5:00 PM");

  reservationSystem.addTrain(train1);
  reservationSystem.addTrain(train2);
  reservationSystem.addTrain(train3);

  stdout.write("Enter Train Number to search: ");
  String searchTrainNumber = stdin.readLineSync()!;
  reservationSystem.displayTrainByNumber(searchTrainNumber);
}

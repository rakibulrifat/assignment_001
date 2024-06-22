class Car {
  String brand;
  String model;
  int year;
  double milesDriven;

  static int numberOfCars = 0;

  Car(this.brand, this.model, this.year, this.milesDriven) {
    numberOfCars++;
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }
}

void main() {
  // Creat Cars objects
  Car car1 = Car('Toyota', 'Corolla', 2009, 5000);
  Car car2 = Car('Honda', 'Civic', 2013, 3000);
  Car car3 = Car('Ford', 'Mustang', 2019, 20000);

  car1.drive(150);
  car2.drive(200);
  car3.drive(300);

  // Print details of each car
  print('Car 1: ${car1.getBrand()} ${car1.getModel()} (${car1.getYear()}) - Miles Driven: ${car1.getMilesDriven()} - Age: ${car1.getAge()} years');
  print('Car 2: ${car2.getBrand()} ${car2.getModel()} (${car2.getYear()}) - Miles Driven: ${car2.getMilesDriven()} - Age: ${car2.getAge()} years');
  print('Car 3: ${car3.getBrand()} ${car3.getModel()} (${car3.getYear()}) - Miles Driven: ${car3.getMilesDriven()} - Age: ${car3.getAge()} years');

  // Print the total number of Car objects
  print('Total number of Car objects created: ${Car.numberOfCars}');
}
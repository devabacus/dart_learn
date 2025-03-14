void main(List<String> args) {
  final enumInstance = Vehicle.car.carbonFootprint;

  final participant = Guest.ivan;
  print(participant.attending());

  print(Guest.stas.attending());
  print(Guest.stas.untilPensiaNotify);
  
  
  print(Guest.stas.compareTo(Guest.ivan));
  print(Guest.values);
  

}

enum Guest implements Comparable<Guest> {
  ivan("Иван", 30),
  stas("Стас", 39);

  final String name;
  final int age;

  const Guest(this.name, this.age);

  int get untilPensia => 65 - age;

  String get untilPensiaNotify =>
      "Уважаемы $name вам до пенсии осталось $untilPensia лет";

  String attending() {
    return "Уважаемый $name, так как вам $age лет, вы можете придти на вечеринку";
  }

  @override
  int compareTo(Guest other) => age - other.age;
}

enum Vehicle implements Comparable<Vehicle> {
  car(tires: 4, passengers: 5, carbonPerKilometer: 400),
  bus(tires: 6, passengers: 50, carbonPerKilometer: 800),
  bicycle(tires: 2, passengers: 1, carbonPerKilometer: 0);

  const Vehicle({
    required this.tires,
    required this.passengers,
    required this.carbonPerKilometer,
  });

  final int tires;
  final int passengers;
  final int carbonPerKilometer;

  int get carbonFootprint => (carbonPerKilometer / passengers).round();

  bool get isTwoWheeled => this == Vehicle.bicycle;

  @override
  int compareTo(Vehicle other) => carbonFootprint - other.carbonFootprint;
}

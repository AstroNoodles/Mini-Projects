void main() {
  print("Hello");
  final bike = Bicycle(2, 20);
  print(bike);
  for (int i = 0; i < 25; i++) {
    bike.applySpeed(i);
    print(bike);
  }
}

class Bicycle {
  int cadence;
  int _speed = 10;
  int get speed => _speed;
  int gear;

  Bicycle(this.cadence, this.gear);

  void applySpeed(int mSpeed) => _speed += mSpeed;

  void decreaseSpeed(int mSpeed) => _speed -= mSpeed;

  @override
  String toString() => "Bicycle at ${_speed} mph";
}

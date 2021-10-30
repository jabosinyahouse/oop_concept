import '../payments/ipayment.dart';

class Driver implements IPayment {
  String _name = "";
  int _numOfTrip = 0;
  int _tripRate = 0;

  Driver(String name, int numOfTrip, int tripRate) {
    _name = name;
    _numOfTrip = numOfTrip;
    _tripRate = tripRate;
  }

  @override
  String get name => _name;
  int get numOfTrip => _numOfTrip;
  int get tripRate => _tripRate;

  set name(String name) => _name = name;
  set numOfTrip(int numOfTrip) => _numOfTrip = numOfTrip;
  set tripRate(int tripRate) => _tripRate = tripRate;

  @override
  int getPayment() {
    return _numOfTrip * _tripRate;
  }
}

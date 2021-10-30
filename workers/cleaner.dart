import '../payments/ipayment.dart';

class Cleaner implements IPayment {
  String _name = "";
  int _dayOfWork = 0;
  int _dayRate = 0;

  Cleaner(String name, int numOfTrip, int tripRate) {
    _name = name;
    _dayOfWork = numOfTrip;
    _dayRate = tripRate;
  }

  @override
  String get name => _name;
  int get dayOfWork => _dayOfWork;
  int get dayRate => _dayRate;

  set name(String name) => _name = name;
  set dayOfWork(int dayOfWork) => _dayOfWork = dayOfWork;
  set dayRate(int dayRate) => _dayRate = dayRate;

  @override
  int getPayment() {
    return _dayOfWork * _dayRate;
  }
}

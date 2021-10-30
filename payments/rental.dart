import 'ipayment.dart';

class Rental implements IPayment {
  int _rentalRate = 0;
  // int _numOfMonth = 0;

  @override
  String get name => "Monthly Rental";
  Rental(
    int rentalRate,
    // int numOfMonth,
  ) {
    _rentalRate = rentalRate;
    // _numOfMonth = numOfMonth;
  }

  int get rentalRate => _rentalRate;
  set rentalRate(int rentalRate) => _rentalRate = rentalRate;

  @override
  int getPayment() {
    // TODO: implement getPayment
    return rentalRate;
  }
}

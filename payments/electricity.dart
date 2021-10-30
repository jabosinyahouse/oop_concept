import 'ipayment.dart';

class Electricity implements IPayment {
  int _unitOfUse = 0;
  int _unitRate = 0;
  // int _numOfMonth = 0;

  @override
  String get name => "Electricity usage";
  Electricity(
    int unitOfUse,
    int unitRate,
  ) {
    _unitOfUse = unitOfUse;
    _unitRate = unitRate;
  }

  int get unitOfUse => _unitOfUse;
  int get unitRate => _unitRate;

  set unitOfUse(int unitOfUse) => _unitOfUse = unitOfUse;
  set unitRate(int unitRate) => _unitRate = unitRate;

  @override
  int getPayment() {
    // TODO: implement getPayment
    return unitOfUse * unitRate;
  }
}

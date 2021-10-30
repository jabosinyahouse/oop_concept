import 'ipayment.dart';

class InternetAccess implements IPayment {
  int _subscriptionRate = 0;

  @override
  String get name => "Internet Access";
  InternetAccess(
    int subscriptionRate,
  ) {
    _subscriptionRate = subscriptionRate;
  }

  int get subscriptionRate => _subscriptionRate;
  set subscriptionRate(int subscriptionRate) =>
      _subscriptionRate = subscriptionRate;

  @override
  int getPayment() {
    return subscriptionRate;
  }
}

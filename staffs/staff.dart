import '../payments/ipayment.dart';

class Staff implements IPayment {
  // _ before name to declare as the private attributes
  String _name = "";
  int _baseSalary = 0;
  int _overtimeHour = 0;
  int _overtimeRate = 0;

  // Constructor
  Staff(
    String name,
    int baseSalary,
    int overtimeHour,
    int overtimeRate,
  ) {
    _name = name;
    _baseSalary = baseSalary;
    _overtimeHour = overtimeHour;
    _overtimeRate = overtimeRate;
  }

  // Getter
  @override
  String get name => _name;
  int get baseSalary => _baseSalary;
  int get overtimeHour => _overtimeHour;
  int get overtimeRate => _overtimeRate;

  // Setter
  set name(String name) => _name = name;
  set baseSalary(int baseSalary) => _baseSalary = baseSalary;
  set overtimeHour(int overtimeHour) => _overtimeHour = overtimeHour;
  set overtimeRate(int overtimeRate) => _overtimeRate = overtimeRate;

  @override
  int getPayment() {
    return _baseSalary + (_overtimeHour * _overtimeRate);
  }
}

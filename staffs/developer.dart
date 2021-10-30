import 'staff.dart';

class DeveloperStaff extends Staff {
  int _codingHour = 0;
  int _codingRate = 0;

  DeveloperStaff(
    String name,
    int baseSalary,
    int overtimeHour,
    int overtimeRate,
  ) : super(
          name,
          baseSalary,
          overtimeHour,
          overtimeRate,
        );

  DeveloperStaff.main(
    String name,
    int baseSalary,
    int overtimeHour,
    int overtimeRate,
    int codingHour,
    int codingRate,
  )   : _codingHour = codingHour,
        _codingRate = codingRate,
        super(
          name,
          baseSalary,
          overtimeHour,
          overtimeRate,
        );

  // Getter
  int get codingHour => _codingHour;
  int get codingRate => _codingRate;

  // Setter
  set codingHour(int codingHour) => _codingHour = codingHour;
  set codingRate(int codingRate) => _codingRate = codingRate;

  @override
  int getPayment() {
    // baseSalary, overtimeHour and overtimeRate can access directly from Staff's getter & setter
    // Public ?
    return baseSalary +
        (overtimeHour * overtimeRate) +
        (_codingHour * _codingRate); // Access inside class
    //  (codingHour * codingRate); // Access by getter
  }
}

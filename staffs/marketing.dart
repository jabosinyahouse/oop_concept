import 'staff.dart';

class Marketing extends Staff {
  int _extraLanguage = 0;
  int _extraLanguageRate = 0;

  Marketing(
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

  Marketing.main(
    String name,
    int baseSalary,
    int overtimeHour,
    int overtimeRate,
    int extraLanguage,
    int extraLanguageRate,
  )   : _extraLanguage = extraLanguage,
        _extraLanguageRate = extraLanguageRate,
        super(
          name,
          baseSalary,
          overtimeHour,
          overtimeRate,
        );

  // Getter
  int get extraLanguage => _extraLanguage;
  int get extraLanguageRate => _extraLanguageRate;

  // Setter
  set extraLanguage(int extraLanguage) => _extraLanguage = extraLanguage;
  set extraLanguageRate(int extraLanguageRate) =>
      _extraLanguageRate = extraLanguageRate;

  @override
  int getPayment() {
    // baseSalary, overtimeHour and overtimeRate can access directly from Staff's getter & setter
    // Public ?
    return baseSalary +
        (overtimeHour * overtimeRate) +
        (extraLanguage * extraLanguageRate); // Access inside class
    //  (codingHour * codingRate); // Access by getter
  }
}

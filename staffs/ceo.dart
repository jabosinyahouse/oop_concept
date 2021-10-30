import 'staff.dart';

class CEOStaff extends Staff {
  int _yearOfExperience = 0;
  int _experienceRate = 0;

  CEOStaff(
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

  CEOStaff.main(
    String name,
    int baseSalary,
    int overtimeHour,
    int overtimeRate,
    int yearOfExperience,
    int experienceRate,
  )   : _yearOfExperience = yearOfExperience,
        _experienceRate = experienceRate,
        super(
          name,
          baseSalary,
          overtimeHour,
          overtimeRate,
        );

  // Getter
  int get yearOfExperience => _yearOfExperience;
  int get experienceRate => _experienceRate;

  // Setter
  set yearOfExperience(int yearOfExperience) =>
      _yearOfExperience = yearOfExperience;
  set experienceRate(int experienceRate) => _experienceRate = experienceRate;

  @override
  int getPayment() {
    return baseSalary + (yearOfExperience * experienceRate);
  }
}

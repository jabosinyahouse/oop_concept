import 'payments/electricity.dart';
import 'payments/internet_access.dart';
import 'payments/rental.dart';
import 'staffs/ceo.dart';
import 'workers/cleaner.dart';
import 'staffs/developer.dart';
import 'workers/driver.dart';
import 'payments/ipayment.dart';
import 'staffs/marketing.dart';

void main() {
  DeveloperStaff dev1 = DeveloperStaff.main("Korn", 40000, 10, 500, 12, 1000);
  CEOStaff ceo1 = CEOStaff.main("Bill", 100000, 2, 500, 5, 10000);
  Marketing marketing1 = Marketing.main("Sara", 25000, 12, 500, 2, 1000);
  Driver driver1 = Driver("John", 6, 800);
  Cleaner cleaner1 = Cleaner("Boon", 15, 350);

  Rental officeRent = Rental(20000);
  Electricity electricity = Electricity(20000, 3);
  InternetAccess internetAccess = InternetAccess(3000);

  int totalPayment = 0;

  List<IPayment> expenses = <IPayment>[];

  expenses.add(dev1);
  expenses.add(ceo1);
  expenses.add(marketing1);
  expenses.add(driver1);
  expenses.add(cleaner1);
  expenses.add(officeRent);
  expenses.add(electricity);
  expenses.add(internetAccess);

  print("This month expenses:");

  for (IPayment cost in expenses) {
    int payment = cost.getPayment();
    print("${cost.name} Payment: $payment");
    totalPayment += payment;
  }

  print("Total Payment: $totalPayment");
}

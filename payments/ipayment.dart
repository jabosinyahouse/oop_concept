/*
Interfaces and abstract classes
- Dart has no interface keyword. 
Instead, all classes implicitly define an interface. 
Therefore, you can implement any class.
link for info: https://dart.dev/samples

To solve this I try to use the abstract class since it allow me to create the methods with empty bodies like your examples (in Java)
*/
abstract class IPayment {
  int getPayment();
  String get name;
}

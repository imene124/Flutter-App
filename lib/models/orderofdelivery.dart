import 'package:delivery_app/models/product.dart';
import 'package:delivery_app/models/user.dart';

class Order {
  double number;
  int quantity;
  bool state;
  double totalPrice;
  User person;
  Product element;

  Order(this.number, this.quantity, this.state, this.totalPrice, this.person,
      this.element);
}

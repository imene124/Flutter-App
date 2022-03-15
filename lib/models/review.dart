import 'package:delivery_app/models/product.dart';
import 'package:delivery_app/models/user.dart';

class Review {
  int nbrestart;
  User user;
  Product product;
  String point;

  Review(this.nbrestart, this.user, this.product, this.point);
}

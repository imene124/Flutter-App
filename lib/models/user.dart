import 'package:delivery_app/models/product.dart';
import 'package:delivery_app/models/review.dart';
import 'package:delivery_app/models/orderofdelivery.dart';

class User {
  String name;
  String email;
  Product product;
  Review review;
  Order delivorder;
  User({
    required this.name,
    required this.email,
    required this.product,
    required this.review,
    required this.delivorder,
  });
}

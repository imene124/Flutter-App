import 'package:delivery_app/colors.dart';
import 'package:delivery_app/menupage.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/secondpage.dart';

class CustomePageRoute extends PageRouteBuilder {
  final Widget child;
  // constroctor for our var child
  CustomePageRoute(this.child)
      : super(
            transitionDuration: Duration(seconds: 3),
            pageBuilder: (context, animation, secondaryAnimation) => child);
  @override
  Widget buildTrsitions(BuildContext context, Animation<double> animation,
          secondaryAnimation, Widget child) =>
      SlideTransition(
        position: Tween<Offset>(
          begin: Offset(-1, 0),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );
}

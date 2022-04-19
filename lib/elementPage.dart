import 'package:delivery_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class element extends StatefulWidget {
  element({Key? key}) : super(key: key);

  @override
  State<element> createState() => _elementState();
}

class _elementState extends State<element> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: SafeArea(child: Column(children: []))));
  }
}

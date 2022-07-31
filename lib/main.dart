import 'package:delivery_app/boarding_screen.dart';
import 'package:delivery_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:delivery_app/Secondpage.dart'; // import file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Boardingscreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

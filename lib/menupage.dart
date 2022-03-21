import 'package:delivery_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class menu extends StatelessWidget {
  const menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: g,
        body: Container(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Icon(
              Icons.search,
              color: w,
              size: 36.0,
            ),
            Icon(
              Icons.shopping_bag,
              color: w,
              size: 36.0,
            ),
            Align(
                child: Text(
              'Make Home',
              style: GoogleFonts.gelasio(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                color: h,
              ),
            )),
            Align(
                child: Text(
              'BEAUTIFUL',
              style: GoogleFonts.gelasio(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )),
          ]),
        ])));
  }
}

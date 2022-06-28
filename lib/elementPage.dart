import 'package:delivery_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'package:delivery_app/menupage.dart';
import 'package:flutter/services.dart';

class element extends StatelessWidget {
  const element({Key? key}) : super(key: key);

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(children: [
        Container(
            margin: EdgeInsets.all(30),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('img/coffechair.png'),
            )),
        Text("Coffee Chair "),
        Text("50£"),
        Text("Minimal Stand is made of by natural wood."
            " The design that is very simple and minimal."
            " This is truly one of the best furnitures in any family for now. "
            "With 3 different colors, you can easily select the best match for your home. "),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Add To Cart',
                style: GoogleFonts.nunitoSans(
                  fontWeight: FontWeight.w600,
                  color: g,
                  fontSize: 18,
                  fontStyle: FontStyle.normal,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                shadowColor: Color.fromRGBO(48, 48, 48, 0.5),
                fixedSize: Size(285, 50),
              ),
            ),
          ],
        )
      ])),
    );
  }
}

import 'package:delivery_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
              body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("img/background.jpg"), fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
                alignment: Alignment(-0.8, 0),
                heightFactor: 1,
                child: Text(
                  'Make Your',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.gelasio(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5,
                    color: a,
                    fontSize: 24,
                  ),
                )),
            SizedBox(height: 5),
            Align(
                alignment: Alignment(-0.5, 0.5),
                heightFactor: 1,
                child: Text('HOME BEAUTIFUL',
                    style: GoogleFonts.gelasio(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: d,
                    ))),
            SizedBox(height: 10),
            Align(
                alignment: Alignment(-0.2, 0.5),
                heightFactor: 2,
                child: Text('It is Comfort Last & Comfort Always ',
                    style: GoogleFonts.nunitoSans(
                      fontStyle: FontStyle.normal,
                      color: c,
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                    ))),
            SizedBox(height: 110),
            Align(
                alignment: Alignment.topCenter,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Get Started',
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      shadowColor: Color.fromRGBO(36, 36, 36, 0.36),
                      fixedSize: const Size(150, 54),
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                      )),
                )),
          ],
        ),
      ))),

      debugShowCheckedModeBanner: false,
      //eliminate debugbanner
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

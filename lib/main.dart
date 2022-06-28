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
      home: const Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
              alignment: const Alignment(-0.8, 0),
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
              ),
              ),
          const SizedBox(height: 5),
          Expanded(
             // alignment: const Alignment(-0.5, 0.5),
              //heightFactor: 1,
              child: Text('HOME BEAUTIFUL',
                  style: GoogleFonts.gelasio(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: d,
                  ))),
          const SizedBox(height: 10),
          Align(
              alignment: const Alignment(-0.2, 0.5),
              heightFactor: 2,
              child: Text('It is Comfort Last & Comfort Always ',
                  style: GoogleFonts.nunitoSans(
                    fontStyle: FontStyle.normal,
                    color: c,
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                  ))),
          const SizedBox(height: 110),
          Container(
            height: 54,
            width: 186,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 0,
                    spreadRadius: 0,
                  )
                ]),
            alignment: Alignment.topCenter,
            child: ElevatedButton(
              onPressed: () {
                _navigateAndDisplaySelection(context);
              },
              child: Text('Get Started',
                  style: GoogleFonts.gelasio(
                    fontSize: 18,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                  )),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                shadowColor: const Color.fromRGBO(36, 36, 36, 0.36),
                fixedSize: const Size(150, 54),
              ),
            ),
          ),
        ],
      ),
    )));
  }

  void _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SecondPage()),
    );
  }
}

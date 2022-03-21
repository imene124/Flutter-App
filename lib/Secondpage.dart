import 'package:delivery_app/colors.dart';
import 'package:delivery_app/menupage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:delivery_app/thirdpage.dart';

//extends stateful Widget

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  //extends our state class and include it in our widget

  State<SecondPage> createState() => _SecondPageState();
}
//state object to our widget which contain data

class _SecondPageState extends State<SecondPage> {
  final String text = "";
  final String value = "";
  bool _Obscure = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SafeArea(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Align(
                  heightFactor: 2,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Image(image: AssetImage('img/R2.png')),
                        const Image(image: AssetImage('img/Group.png')),
                        const Image(image: AssetImage('img/R1.png')),
                      ])),
              Align(
                alignment: const Alignment(-0.75, 0),
                child: Text(
                  'Hello!',
                  style: GoogleFonts.merriweather(
                    fontWeight: FontWeight.w400,
                    fontSize: 30,
                    fontStyle: FontStyle.normal,
                    color: h,
                  ),
                ),
              ),
              Align(
                heightFactor: 1.5,
                alignment: const Alignment(-0.5, 0.3),
                child: Text(
                  'WELCOME BACK',
                  style: GoogleFonts.merriweather(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontStyle: FontStyle.normal,
                    color: k,
                  ),
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black54,
                        offset: Offset(10.0, 20.0),
                        blurRadius: 8.0,
                        spreadRadius: -20.0,
                      )
                    ],
                    color: Colors.white,
                  ),
                  child: Column(children: [
                    Padding(
                        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
                        child: TextField(
                          onChanged: (value) {
                            print('$value');
                          },
                          keyboardType: TextInputType.emailAddress,
                          autocorrect: false,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: GoogleFonts.nunitoSans(
                              fontSize: 15,
                              fontStyle: FontStyle.normal,
                              color: h,
                            ),
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                      child: TextField(
                        onChanged: (text) {
                          print('$text');
                        },
                        autocorrect: false,
                        obscureText: _Obscure,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: GoogleFonts.nunitoSans(
                              fontSize: 15,
                              fontStyle: FontStyle.normal,
                              color: h,
                            )),
                      ),
                    ),
                    Align(
                        heightFactor: 2,
                        child: TextButton(
                            onPressed: () {},
                            child: Text('Forgot Password',
                                style: GoogleFonts.nunitoSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                  color: k,
                                )))),
                    Align(
                        heightFactor: 0.5,
                        child: ElevatedButton(
                          onPressed: () {
                            _navigateAndDisplaySelection(context);
                          },
                          child: Text(
                            'Log in',
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
                                borderRadius: BorderRadius.circular(8)),
                            shadowColor: Color.fromRGBO(48, 48, 48, 0.5),
                            fixedSize: Size(285, 50),
                          ),
                        )),
                    Align(
                        heightFactor: 2,
                        child: TextButton(
                            child: Text(
                              'SIGN UP',
                              style: GoogleFonts.nunitoSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                color: k,
                              ),
                            ),
                            onPressed: () {
                              _navigateAndDisplaySelection2(context);
                            }))
                  ]))
            ]),
          ),
        ));
  }

  void _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const menu()),
    );
  }

  void _navigateAndDisplaySelection2(BuildContext context) async {
    final result2 = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const form()),
    );
  }
}

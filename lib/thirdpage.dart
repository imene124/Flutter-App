import 'package:delivery_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class form extends StatefulWidget {
  const form({Key? key}) : super(key: key);

  @override
  State<form> createState() => _formState();
}

class _formState extends State<form> {
  bool _Obscure = true;
  final String name = "";
  final String mail = "";
  final String pass = "";
  final String Confpass = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: g,
            body: Container(
                child: Column(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                      alignment: Alignment(-0.75, 0),
                      child: Text(
                        'WELCOME',
                        style: GoogleFonts.merriweather(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          color: M,
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: TextField(
                      onChanged: (name) {
                        print('$name');
                      },
                      autocorrect: false,
                      obscureText: _Obscure,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: 'Name',
                          labelStyle: GoogleFonts.nunitoSans(
                            fontSize: 15,
                            fontStyle: FontStyle.normal,
                            color: h,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: TextField(
                      onChanged: (mail) {
                        print('$mail');
                      },
                      autocorrect: false,
                      obscureText: _Obscure,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: GoogleFonts.nunitoSans(
                            fontSize: 15,
                            fontStyle: FontStyle.normal,
                            color: h,
                          )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: TextField(
                      onChanged: (pass) {
                        print('$pass');
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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: TextField(
                      onChanged: (confpass) {
                        print('$confpass');
                      },
                      autocorrect: false,
                      obscureText: _Obscure,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          labelStyle: GoogleFonts.nunitoSans(
                            fontSize: 15,
                            fontStyle: FontStyle.normal,
                            color: h,
                          )),
                    ),
                  ),
                  Align(
                    heightFactor: 3,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'SIGN UP',
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
                        shadowColor: const Color.fromRGBO(48, 48, 48, 0.5),
                        fixedSize: const Size(285, 50),
                      ),
                    ),
                  ),
                  Align(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have Acouunt?',
                              style: GoogleFonts.nunitoSans(
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: N,
                              )),
                          Align(
                              child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('SIGN IN',
                                style: GoogleFonts.nunitoSans(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Colors.black,
                                )),
                          ))
                        ]),
                  ),
                ],
              )
            ]))));
  }
}

import 'package:delivery_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:delivery_app/elementPage.dart';

class menu extends StatelessWidget {
  const menu({Key? key}) : super(key: key);

  get children => null;

  @override
  Widget build(BuildContext context) {
    //aperçu appbar uniquemant en ajoutant packages services
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [
        SystemUiOverlay.top,
        // Shows Status bar and hides Navigation bar
      ],
    );
    return Scaffold(
        backgroundColor: g,
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Icon(
                  Icons.search,
                  color: w,
                  size: 36.0,
                ),
                SizedBox(width: 5), // give it width

                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Make Home',
                          style: GoogleFonts.gelasio(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            color: h,
                          )),
                      Text(
                        'BEAUTIFUL',
                        style: GoogleFonts.gelasio(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ]),
                SizedBox(width: 5), // give it width

                Icon(
                  Icons.shopping_bag,
                  color: w,
                  size: 36.0,
                ),
              ]),
              SizedBox(height: 10), // <-- Set height
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Column(children: [
                  Image(
                    image: AssetImage('img/Group 9.png'),
                  ),
                  Text('Popular',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ))
                ]),
                Column(children: [
                  Image(image: AssetImage('img/Group 2.png')),
                  Text('Chair',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ))
                ]),
                Column(children: [
                  Image(image: AssetImage('img/Group 4.png')),
                  Text('Table',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ))
                ]),
                Column(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image(image: AssetImage('img/Group 6.png')),
                  ),
                  Text('Armchair',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ))
                ]),
                Column(children: [
                  Image(image: AssetImage('img/Group 8.png')),
                  Text('Bed',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ))
                ]),
                Image(image: AssetImage('img/Group 10.png')),
              ]),
              SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image(
                                image: AssetImage('img/jjj.png'),
                                width: 200,
                                height: 200,
                              ),
                            ),
                            Positioned(
                                bottom: 10,
                                left: 140,
                                child: InkWell(
                                  child: Image(
                                    image: AssetImage('img/Frame 19.png'),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      Text('Black simple Lamp',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 16,
                            color: O,
                            fontWeight: FontWeight.w400,
                          )),
                      Text('£12.00',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 16,
                            color: k,
                            fontWeight: FontWeight.w700,
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          child: Stack(children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image(
                              image: AssetImage('img/hh.png'),
                              width: 200,
                              height: 200,
                            )),
                        Positioned(
                          bottom: 10,
                          left: 140,
                          child: InkWell(
                            child: Image(
                              image: AssetImage('img/Frame 19.png'),
                            ),
                          ),
                        ),
                      ])),
                      Text('Minimal Stand',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 16,
                            color: O,
                            fontWeight: FontWeight.w400,
                          )),
                      Text('£25.00',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 16,
                            color: k,
                            fontWeight: FontWeight.w700,
                          )),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15),

              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Column(
                  children: [
                    Container(
                        child: Stack(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image(
                          image: AssetImage('img/coffechair.png'),
                          width: 200,
                          height: 200,
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 140,
                        // pour permettre le click on img.asset
                        child: InkWell(
                            child: Image(
                              image: AssetImage('img/Frame 19.png'),
                            ),
                            onTap: () {
                              _navigateAndDisplaySelection3(context);
                            }),
                      ),
                    ])),
                    Text('Coffee Chair',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 16,
                          color: O,
                          fontWeight: FontWeight.w400,
                        )),
                    Text('£20.00',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 16,
                          color: k,
                          fontWeight: FontWeight.w700,
                        )),
                  ],
                ),
                Column(
                  children: [
                    Container(
                        child: Stack(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image(
                          image: AssetImage('img/Desk.png'),
                          width: 200,
                          height: 200,
                        ),
                      ),
                      Positioned(
                          bottom: 10,
                          left: 140,
                          child: Image(
                            image: AssetImage('img/Frame 19.png'),
                          )),
                    ])),
                    Text('Simple Desk',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 16,
                          color: O,
                          fontWeight: FontWeight.w400,
                        )),
                    Text('£50.00',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 16,
                          color: k,
                          fontWeight: FontWeight.w700,
                        )),
                  ],
                )
              ]),
              SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.home,
                    color: w,
                    size: 36.0,
                  ),
                  Image(image: AssetImage('img/record.png')),
                  Image(image: AssetImage('img/alert.png')),
                  Image(image: AssetImage('img/user.png')),
                ],
              )
            ])));
  }

  void _navigateAndDisplaySelection3(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => element()),
    );
  }
}

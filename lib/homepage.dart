import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:glassmorphism/glassmorphism.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("FFDBB1"),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/images/backgroundpng.png",
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        child: Text(
                          "Nalhati",
                          style: GoogleFonts.inter(
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                            color: HexColor("313341"),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 43,
                      ),
                      Container(
                        child: Text(
                          "Tue, Jun 30",
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: HexColor("9A938C"),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/storm.png",
                        scale: 4,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Text(
                              "°C",
                              style: GoogleFonts.inter(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: HexColor("303345"),
                                  height: 0.1),
                            ),
                          ),
                          Text(
                            "19",
                            style: GoogleFonts.inter(
                                fontSize: 100,
                                fontWeight: FontWeight.w800,
                                color: HexColor("303345"),
                                height: 1.0),
                          ),
                          Text(
                            "Rainy",
                            style: GoogleFonts.inter(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: HexColor("303345")),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  //RAINFALL..................................................
                  GlassmorphicContainer(
                      width: MediaQuery.of(context).size.width - 60,
                      height: 80,
                      borderRadius: 20,
                      blur: 80,
                      alignment: Alignment.bottomCenter,
                      border: 0,
                      linearGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.white.withOpacity(0.3),
                            Colors.white54.withOpacity(0.1),
                          ],
                          stops: [
                            0.1,
                            1,
                          ]),
                      borderGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.white.withOpacity(0.5),
                          Colors.white54.withOpacity(0.5),
                        ],
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Image.asset(
                                  "assets/images/rain.png",
                                  scale: 11,
                                    color: HexColor("303345")
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "RainFall",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,color: HexColor("303345")),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "3 cm",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,color: HexColor("303345")),
                                ),
                                SizedBox(
                                  width: 40,
                                )
                              ],
                            ),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 8,
                  ),
                  GlassmorphicContainer(
                      width: MediaQuery.of(context).size.width - 60,
                      height: 80,
                      borderRadius: 20,
                      blur: 80,
                      alignment: Alignment.bottomCenter,
                      border: 0,
                      linearGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.white.withOpacity(0.3),
                            Colors.white54.withOpacity(0.1),
                          ],
                          stops: [
                            0.1,
                            1,
                          ]),
                      borderGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.white.withOpacity(0.5),
                          Colors.white54.withOpacity(0.5),
                        ],
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Image.asset(
                                  "assets/images/windy.png",
                                  scale: 11,
                                    color: HexColor("303345")
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "Wind",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600, fontSize: 12,color: HexColor("303345")),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "19 Km/h",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600, fontSize: 16,color: HexColor("303345")),
                                ),
                                SizedBox(
                                  width: 40,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),),
                  SizedBox(
                    height: 8,
                  ),
                  GlassmorphicContainer(
                    width: MediaQuery.of(context).size.width - 60,
                    height: 80,
                    borderRadius: 20,
                    blur: 80,
                    alignment: Alignment.bottomCenter,
                    border: 0,
                    linearGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.white.withOpacity(0.3),
                          Colors.white54.withOpacity(0.1),
                        ],
                        stops: [
                          0.1,
                          1,
                        ]),
                    borderGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white.withOpacity(0.5),
                        Colors.white54.withOpacity(0.5),
                      ],
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Image.asset(
                                "assets/images/humidity.png",
                                scale: 11,
                                  color: HexColor("303345")
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Humidity",
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600, fontSize: 12,color: HexColor("303345")),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "64 %",
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600, fontSize: 16,color: HexColor("303345")),
                              ),
                              SizedBox(
                                width: 40,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:marqueer/marqueer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'gaura',
          style: GoogleFonts.yujiBoku(
            textStyle: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 26,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              letterSpacing: 0.0,
            ),
          ),
        ),

        centerTitle: true,
        // backgroundColor: Color.fromARGB(255, 17, 17, 17),
        backgroundColor: Colors.transparent,
        foregroundColor: Color.fromARGB(255, 255, 255, 255),
        scrolledUnderElevation: 5,
        toolbarHeight: 72,
        actions: [
          Row(
            children: [
              TextButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Abhi art page connect nhi kara'),
                    ),
                  );
                },
                label: Text(
                  "  art\nwork",
                  style: GoogleFonts.bungeeHairline(
                    textStyle: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0.0,
                    ),
                  ),
                ),
                icon: Icon(Icons.palette_outlined, color: Colors.white),
              ),
            ],
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Container(
            color: Color.fromARGB(255, 55, 66, 79),
            child: Container(
              height: 1.0,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 55, 66, 79),
                    width: 1.0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 17, 17, 17),
      body: Stack(
        children: [
          const SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: GridPaper(
              color: Color.fromARGB(255, 55, 66, 79),
              interval: 100,
              subdivisions: 1,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 66, 20, 20),
                          child:
                              //FittedBox(
                              //fit: BoxFit.fitWidth,
                              // child:
                              Center(
                            child: Text(
                              'hi, i\'m gauransh',
                              style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 110,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 0.0,
                                ),
                              ),
                            ),
                          ),
                          //  ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                          child: Center(
                            child: Text(
                              'flutter developer and designer',
                              style: GoogleFonts.abel(
                                textStyle: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 0.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            width: 600,
                            margin: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 30),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    style: GoogleFonts.gruppo(
                                      textStyle: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        letterSpacing: 0.0,
                                      ),
                                    ),
                                    decoration: InputDecoration(
                                      hintText: 'Got a project? Let\'s talk!',
                                      hintStyle: GoogleFonts.gruppo(
                                        fontSize: 22,
                                        color: Colors.white,
                                      ),
                                      filled: true,
                                      fillColor:
                                          Color.fromARGB(255, 42, 42, 42),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none,
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 15, horizontal: 20),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.send,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: Row(
                            children: [
                              Text(
                                "I can ",
                                style: GoogleFonts.abel(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: 0.0,
                                  ),
                                ),
                              ),
                              AnimatedTextKit(
                                displayFullTextOnTap: true,
                                repeatForever: true,
                                animatedTexts: [
                                  TypewriterAnimatedText(
                                    'build your first app',
                                    textStyle: GoogleFonts.abel(
                                      textStyle: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 24,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        letterSpacing: 0.0,
                                      ),
                                    ),
                                  ),
                                  TyperAnimatedText(
                                    'edit your video',
                                    textStyle: GoogleFonts.abel(
                                      textStyle: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 24,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        letterSpacing: 0.0,
                                      ),
                                    ),
                                  ),
                                  TyperAnimatedText(
                                    'make you a logo',
                                    textStyle: GoogleFonts.abel(
                                      textStyle: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 24,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        letterSpacing: 0.0,
                                      ),
                                    ),
                                  ),
                                  TyperAnimatedText(
                                    'build you a website',
                                    textStyle: GoogleFonts.abel(
                                      textStyle: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 24,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        letterSpacing: 0.0,
                                      ),
                                    ),
                                  ),
                                  TyperAnimatedText(
                                    'make you a poster',
                                    textStyle: GoogleFonts.abel(
                                      textStyle: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 24,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        letterSpacing: 0.0,
                                      ),
                                    ),
                                  ),
                                  TyperAnimatedText(
                                    'make you a flyer',
                                    textStyle: GoogleFonts.abel(
                                      textStyle: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 24,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        letterSpacing: 0.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: Marqueer(
                    pps: 32,
                    direction: MarqueerDirection.ltr,
                    restartAfterInteractionDuration: const Duration(seconds: 3),
                    child: Row(
                      children: [
                        Card(
                          elevation: 3,
                          shadowColor: Color.fromARGB(255, 100, 99, 99),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Color.fromARGB(255, 0, 0, 0),
                          child: Row(
                            children: [
                              SizedBox(
                                  width: 100,
                                  height: 75,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Image.asset(
                                      "/Users/gauransh/FlutterDev/gaura/assets/logo/premiere.png",
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                child: Text(
                                  "Premiere\nPro",
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          elevation: 3,
                          shadowColor: Color.fromARGB(255, 100, 99, 99),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Color.fromARGB(255, 0, 0, 0),
                          child: Row(
                            children: [
                              SizedBox(
                                  width: 100,
                                  height: 75,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Image.asset(
                                      "/Users/gauransh/FlutterDev/gaura/assets/logo/illustrator.png",
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                child: Text(
                                  "Illustrator",
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          elevation: 3,
                          shadowColor: Color.fromARGB(255, 100, 99, 99),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Color.fromARGB(255, 0, 0, 0),
                          child: Row(
                            children: [
                              SizedBox(
                                  width: 100,
                                  height: 75,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Image.asset(
                                      "/Users/gauransh/FlutterDev/gaura/assets/logo/git.png",
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                child: Text(
                                  "Git",
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          elevation: 3,
                          shadowColor: Color.fromARGB(255, 100, 99, 99),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Color.fromARGB(255, 0, 0, 0),
                          child: Row(
                            children: [
                              SizedBox(
                                  width: 100,
                                  height: 75,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Image.asset(
                                      "/Users/gauransh/FlutterDev/gaura/assets/logo/flutter.png",
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                child: Text(
                                  "Flutter",
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          elevation: 3,
                          shadowColor: Color.fromARGB(255, 100, 99, 99),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Color.fromARGB(255, 0, 0, 0),
                          child: Row(
                            children: [
                              SizedBox(
                                  width: 100,
                                  height: 75,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Image.asset(
                                      "/Users/gauransh/FlutterDev/gaura/assets/logo/dart.png",
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                child: Text(
                                  "Dart",
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: Marqueer(
                    pps: 31,
                    direction: MarqueerDirection.rtl,
                    restartAfterInteractionDuration: const Duration(seconds: 3),
                    child: Row(
                      children: [
                        Card(
                          elevation: 3,
                          shadowColor: Color.fromARGB(255, 100, 99, 99),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Color.fromARGB(255, 0, 0, 0),
                          child: Row(
                            children: [
                              SizedBox(
                                  width: 100,
                                  height: 75,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 14, 0, 8),
                                    child: Image.asset(
                                      "/Users/gauransh/FlutterDev/gaura/assets/logo/python.png",
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                child: Text(
                                  "Python",
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          elevation: 3,
                          shadowColor: Color.fromARGB(255, 100, 99, 99),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Color.fromARGB(255, 0, 0, 0),
                          child: Row(
                            children: [
                              SizedBox(
                                  width: 100,
                                  height: 75,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Image.asset(
                                      "/Users/gauransh/FlutterDev/gaura/assets/logo/procreate.png",
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                child: Text(
                                  "Procreate",
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          elevation: 3,
                          shadowColor: Color.fromARGB(255, 100, 99, 99),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Color.fromARGB(255, 0, 0, 0),
                          child: Row(
                            children: [
                              SizedBox(
                                  width: 100,
                                  height: 75,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Image.asset(
                                      "/Users/gauransh/FlutterDev/gaura/assets/logo/photoshop.png",
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                child: Text(
                                  "Photoshop",
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          elevation: 3,
                          shadowColor: Color.fromARGB(255, 100, 99, 99),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Color.fromARGB(255, 0, 0, 0),
                          child: Row(
                            children: [
                              SizedBox(
                                  width: 100,
                                  height: 75,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Image.asset(
                                      "/Users/gauransh/FlutterDev/gaura/assets/logo/canva.png",
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                child: Text(
                                  "canva",
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          elevation: 3,
                          shadowColor: Color.fromARGB(255, 100, 99, 99),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Color.fromARGB(255, 0, 0, 0),
                          child: Row(
                            children: [
                              SizedBox(
                                  width: 100,
                                  height: 75,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 10, 8, 10),
                                    child: Image.asset(
                                      "/Users/gauransh/FlutterDev/gaura/assets/logo/figma.png",
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                child: Text(
                                  "figma",
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: Marqueer(
                    pps: 30,
                    direction: MarqueerDirection.ltr,
                    restartAfterInteractionDuration: const Duration(seconds: 3),
                    child: Row(
                      children: [
                        Card(
                            elevation: 3,
                            shadowColor: Color.fromARGB(255, 100, 99, 99),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Color.fromARGB(255, 0, 0, 0),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 80,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Image.asset(
                                        "/Users/gauransh/FlutterDev/gaura/assets/logo/vectornator.png",
                                        fit: BoxFit.contain,
                                      ),
                                    )),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                  child: Text(
                                    "Vectornator",
                                    style: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            )),
                        Card(
                          elevation: 3,
                          shadowColor: Color.fromARGB(255, 100, 99, 99),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Color.fromARGB(255, 0, 0, 0),
                          child: Row(
                            children: [
                              SizedBox(
                                  width: 100,
                                  height: 75,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Image.asset(
                                      "/Users/gauransh/FlutterDev/gaura/assets/logo/sql.png",
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                child: Text(
                                  "MySql",
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          elevation: 3,
                          shadowColor: Color.fromARGB(255, 100, 99, 99),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Color.fromARGB(255, 0, 0, 0),
                          child: Row(
                            children: [
                              SizedBox(
                                  width: 100,
                                  height: 75,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Image.asset(
                                      "/Users/gauransh/FlutterDev/gaura/assets/logo/cpp.png",
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                child: Text(
                                  "C++",
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          elevation: 3,
                          shadowColor: Color.fromARGB(255, 100, 99, 99),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Color.fromARGB(255, 0, 0, 0),
                          child: Row(
                            children: [
                              SizedBox(
                                  width: 100,
                                  height: 75,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Image.asset(
                                      "/Users/gauransh/FlutterDev/gaura/assets/logo/java.png",
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                child: Text(
                                  "Java",
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          elevation: 3,
                          shadowColor: Color.fromARGB(255, 100, 99, 99),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Color.fromARGB(255, 0, 0, 0),
                          child: Row(
                            children: [
                              SizedBox(
                                  width: 100,
                                  height: 75,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Image.asset(
                                      "/Users/gauransh/FlutterDev/gaura/assets/logo/flutter.png",
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                child: Text(
                                  "Flutter",
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Expanded(
                //   child: Align(
                //     alignment: Alignment.bottomCenter,
                //     child: Container(
                //         width: MediaQuery.of(context).size.width,
                //         height: 400,
                //         child: Image.asset(
                //             '/Users/gauransh/FlutterDev/gaura/assets/gaura.png')),
                //   ),
                // ),

               
                      //   Container(
                      //     width: MediaQuery.of(context).size.width,
                      //     height: MediaQuery.of(context).size.height * 0.1852,
                      //     decoration: BoxDecoration(
                      //       image: DecorationImage(
                      //           fit: BoxFit.fitWidth,
                      //           image: AssetImage(
                      //               '/Users/gauransh/FlutterDev/gaura/assets/gaura.png')),
                      //     ),
                      //   ),
                      // ],


                // SizedBox(
                //   // height: (MediaQuery.of(context).size.height * 0.1852),
                //   // width: (MediaQuery.of(context).size.width),

                //   child: Align(
                //     alignment: Alignment.bottomCenter,
                //     child: Expanded(
                //       child: Image.asset(
                //           "/Users/gauransh/FlutterDev/gaura/assets/gaura.png"),
                //     ),
                //   ),
                // ),

                //       Align(
                //   alignment: Alignment.bottomCenter,
                //   child: Expanded(
                //     child: Image.asset(
                //         "/Users/gauransh/FlutterDev/gaura/assets/gaura.png"),
                //   ),
                // )
              
              
              ],
            ),
          ),
        ],
      ),
    );
  }
}

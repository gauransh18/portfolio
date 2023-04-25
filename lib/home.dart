// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:marqueer/marqueer.dart';
import 'package:http/http.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:neopop/neopop.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final advancedDrawerController = AdvancedDrawerController();

    void _handleMenuButtonPressed() {
      advancedDrawerController.showDrawer();
    }

    Widget pdfPu(BuildContext context) {
      return AlertDialog(
        title: const Text('Popup example'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Hello"),
          ],
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            // textColor: Theme.of(context).primaryColor,
            child: const Text('Close'),
          ),
        ],
      );
    }

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    snack() {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Something went wrong"),
        ),
      );
    }

    return AdvancedDrawer(
      backdropColor: Color.fromARGB(255, 0, 0, 0),
      controller: advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      openRatio: 0.35,
      disabledGestures: false,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: _handleMenuButtonPressed,
            icon: ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: advancedDrawerController,
              builder: (_, value, __) {
                return AnimatedSwitcher(
                  duration: Duration(seconds: 1),
                  child: Icon(
                    value.visible ? Icons.clear : Icons.menu,
                    key: ValueKey<bool>(value.visible),
                  ),
                );
              },
            ),
          ),
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
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => pdfPu(context),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Abhi resume nhi dala'),
                      ),
                    );
                  },
                  label: Text(
                    "Resume",
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
                  icon: Icon(Icons.note, color: Colors.white),
                ),
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
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
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
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
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          letterSpacing: 0.0,
                                        ),
                                      ),
                                    ),
                                    TypewriterAnimatedText(
                                      'edit your video',
                                      textStyle: GoogleFonts.abel(
                                        textStyle: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          letterSpacing: 0.0,
                                        ),
                                      ),
                                    ),
                                    TypewriterAnimatedText(
                                      'make you a logo',
                                      textStyle: GoogleFonts.abel(
                                        textStyle: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          letterSpacing: 0.0,
                                        ),
                                      ),
                                    ),
                                    TypewriterAnimatedText(
                                      'build you a website',
                                      textStyle: GoogleFonts.abel(
                                        textStyle: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          letterSpacing: 0.0,
                                        ),
                                      ),
                                    ),
                                    TypewriterAnimatedText(
                                      'make you a poster',
                                      textStyle: GoogleFonts.abel(
                                        textStyle: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          letterSpacing: 0.0,
                                        ),
                                      ),
                                    ),
                                    TypewriterAnimatedText(
                                      'make you a flyer',
                                      textStyle: GoogleFonts.abel(
                                        textStyle: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
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
                            height: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: Marqueer(
                      interaction: false,
                      pps: 32,
                      direction: MarqueerDirection.ltr,
                      restartAfterInteractionDuration:
                          const Duration(seconds: 3),
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
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 8, 16, 8),
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
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 8, 16, 8),
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
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 8, 16, 8),
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
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 8, 16, 8),
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
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 8, 16, 8),
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
                      interaction: false,
                      pps: 31,
                      direction: MarqueerDirection.rtl,
                      restartAfterInteractionDuration:
                          const Duration(seconds: 3),
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
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 14, 0, 8),
                                      child: Image.asset(
                                        "/Users/gauransh/FlutterDev/gaura/assets/logo/python.png",
                                      ),
                                    )),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 8, 16, 8),
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
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 8, 16, 8),
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
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 8, 16, 8),
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
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 8, 16, 8),
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
                                      padding: const EdgeInsets.fromLTRB(
                                          8, 10, 8, 10),
                                      child: Image.asset(
                                        "/Users/gauransh/FlutterDev/gaura/assets/logo/figma.png",
                                      ),
                                    )),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 8, 16, 8),
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
                      interaction: false,
                      pps: 30,
                      direction: MarqueerDirection.ltr,
                      restartAfterInteractionDuration:
                          const Duration(seconds: 3),
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
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 8, 16, 8),
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
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 8, 16, 8),
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
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 8, 16, 8),
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
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: (height - width > 200) ? height - width - 100 : 200,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: width / 5,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: AssetImage(
                                  '/Users/gauransh/FlutterDev/gaura/assets/gaura.png')),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // TextButton(
                            //   onPressed: () async {
                            //     var urllaunchable = await canLaunchUrl(
                            //         Uri.https(
                            //             "linkedin.com", "/in/gauransh18"));
                            //     if (urllaunchable) {
                            //       await launchUrl(Uri.https(
                            //           "linkedin.com", "/in/gauransh18"));
                            //     } else {
                            //       snack();
                            //     }
                            //   },
                            //   child: Text(
                            //     "linkedin",
                            //     style: GoogleFonts.abel(
                            //       color: Colors.white,
                            //       fontSize: 22,
                            //     ),
                            //   ),
                            // ),
                            // TextButton(
                            //   onPressed: () async {
                            //     var urllaunchable = await canLaunchUrl(
                            //         Uri.https("t.me", "/gauransh18"));
                            //     if (urllaunchable) {
                            //       await launchUrl(
                            //           Uri.https("t.me", "/gauransh18"));
                            //     } else {
                            //       snack();
                            //     }
                            //   },
                            //   child: Text(
                            //     "telegram",
                            //     style: GoogleFonts.abel(
                            //       color: Colors.white,
                            //       fontSize: 22,
                            //     ),
                            //   ),
                            // ),

                            TextButton(
                              onPressed: () async {
                                var urllaunchable = await canLaunchUrl(
                                    Uri.https("github.com", "/gauransh18"));
                                if (urllaunchable) {
                                  await launchUrl(
                                      Uri.https("github.com", "/gauransh18"));
                                } else {
                                  snack();
                                }
                              },
                              child: Text(
                                "github",
                                style: GoogleFonts.abel(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                            ),

                            // TextButton(
                            //   onPressed: () async {
                            //     var urllaunchable = await canLaunchUrl(
                            //         Uri.https("instagram.com", "/gauransh18_"));
                            //     if (urllaunchable) {
                            //       await launchUrl(Uri.https(
                            //           "intagram.com", "/gauransh18_"));
                            //     } else {
                            //       snack();
                            //     }
                            //   },
                            //   child: Text(
                            //     "instagram",
                            //     style: GoogleFonts.abel(
                            //       color: Colors.white,
                            //       fontSize: 22,
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: SafeArea(
        child: Container(
          child: ListTileTheme(
            textColor: Colors.white,
            iconColor: Colors.white,
            child: ListView(
              // mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  height: 200.0,
                  // margin: const EdgeInsets.only(
                  //   top: 24.0,
                  //   bottom: 64.0,
                  // ),
                  // clipBehavior: Clip.antiAlias,
                  // decoration: BoxDecoration(
                  //   color: Colors.black26,
                  //   shape: BoxShape.circle,
                  // ),
                  child: Image.asset(
                    '/Users/gauransh/FlutterDev/gaura/assets/imposter.gif',
                    fit: BoxFit.fitHeight,
                  ),
                ),
                NeoPopTiltedButton(
                  //bottomShadowColor: Color.fromARGB(255, 225, 225, 225),
                  //rightShadowColor: Color.fromARGB(255, 255, 255, 255),
                  color: Colors.blueAccent,

                  onTapUp: () async {
                    var urllaunchable = await canLaunchUrl(
                        Uri.https("linkedin.com", "/in/gauransh18"));
                    if (urllaunchable) {
                      await launchUrl(
                          Uri.https("linkedin.com", "/in/gauransh18"));
                    } else {
                      snack();
                    }
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("linkedin",
                            style: GoogleFonts.abel(
                              color: Colors.white,
                              fontSize: 22,
                            )),
                      ],
                    ),
                  ),
                ),
                NeoPopTiltedButton(
                  //   bottomShadowColor: Colors.orange,
                  // rightShadowColor: Color.fromARGB(255, 67, 248, 146),
                  color: Colors.amber,

                  onTapUp: () async {
                    var urllaunchable =
                        await canLaunchUrl(Uri.https("t.me", "/gauransh18"));
                    if (urllaunchable) {
                      await launchUrl(Uri.https("t.me", "gauransh18"));
                    } else {
                      snack();
                    }
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("telegram",
                            style: GoogleFonts.abel(
                              color: Colors.white,
                              fontSize: 22,
                            )),
                      ],
                    ),
                  ),
                ),
                NeoPopTiltedButton(
                  //bottomShadowColor: Color.fromARGB(255, 225, 225, 225),
                  //rightShadowColor: Color.fromARGB(255, 255, 255, 255),
                  color: Color.fromARGB(255, 238, 87, 138),

                  onTapUp: () async {
                    var urllaunchable = await canLaunchUrl(
                        Uri.https("instagram.com", "gauransh18"));
                    if (urllaunchable) {
                      await launchUrl(Uri.https("instagram.co", "gauransh18"));
                    } else {
                      snack();
                    }
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("instagram",
                            style: GoogleFonts.abel(
                              color: Colors.white,
                              fontSize: 22,
                            )),
                      ],
                    ),
                  ),
                ),
                // SizedBox(
                //   height: height-444,
                // ),
                // DefaultTextStyle(
                //   style: TextStyle(
                //     fontSize: 12,
                //     color: Colors.white54,
                //   ),
                //   child: Container(
                //     margin: const EdgeInsets.symmetric(
                //       vertical: 16.0,
                //     ),
                //     child: Text('Terms of Service | Privacy Policy'),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

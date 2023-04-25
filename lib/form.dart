// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

import 'package:gaura/formID.dart';
import 'package:gaura/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:neopop/neopop.dart';
import 'dart:convert';
import 'package:email_validator/email_validator.dart';

import 'package:url_launcher/url_launcher.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final messageController = TextEditingController();

    Future sendEmail(String name, String email, String message) async {
      final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
      final response = await http.post(url,
          headers: {'Content-Type': 'application/json'},
          body: json.encode({
            'service_id': serviceId,
            'template_id': templateId,
            'user_id': userId,
            'template_params': {
              'from_name': name,
              'from_email': email,
              'message': message
            }
          }));
      return response.statusCode;
    }

    final advancedDrawerController = AdvancedDrawerController();

    void _handleMenuButtonPressed() {
      advancedDrawerController.showDrawer();
    }

    Widget pdfPu(BuildContext context) {
      return AlertDialog(
        title: const Text('Resume Preview'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Resume"),
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
                        await launchUrl(
                            Uri.https("instagram.co", "gauransh18"));
                      } else {
                        snack();
                      }
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
            title: TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil(homeRoute, (route) => false);
              },
              child: Text(
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
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

SizedBox(height: 40),
                        Container(
                           width: (width - 100 > 500) ? 500 : width - 100,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 17, 17, 17),
                            border: Border.all(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(
                                8,8,8,0),
                            child: TextFormField(
                              cursorColor: Colors.white,
                              style: GoogleFonts.gruppo(
                                textStyle: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 0.0,
                                ),
                              ),
                              controller: nameController,
                              decoration: InputDecoration(
                                hintText: 'name',
                                hintStyle: GoogleFonts.gruppo(
                                  fontSize: 22,
                                  color: Color.fromARGB(255, 175, 175, 175),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return '*Required';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(

                           width: (width - 100 > 500) ? 500 : width - 100,
                          decoration: BoxDecoration(
                           color: Color.fromARGB(255, 17, 17, 17),
                            border: Border.all(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(
                                8,8,8,0),
                            child: TextFormField(
                              cursorColor: Colors.white,
                              style: GoogleFonts.gruppo(
                                textStyle: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 0.0,
                                ),
                              ),
                              controller: emailController,
                              decoration: InputDecoration(
                                hintText: 'email',
                                hintStyle: GoogleFonts.gruppo(
                                  fontSize: 22,
                                  color: Color.fromARGB(255, 175, 175, 175),
                                ),
                              ),
                              validator: (email) {
                            if (email == null || email.isEmpty) {
                              return 'Required*';
                            } else if (!EmailValidator.validate(email)) {
                              return 'Please enter a valid Email';
                            }
                            return null;
                          },
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                         Container(
                          width: (width - 100 > 500) ? 500 : width - 100,

                          decoration: BoxDecoration(
                            color:Color.fromARGB(255, 17, 17, 17),
                            border: Border.all(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(
                                8,8,8,0),
                            child: TextFormField(
                              maxLines: 6,
                              cursorColor: Colors.white,
                              style: GoogleFonts.gruppo(
                                textStyle: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 0.0,
                                ),
                              ),
                              controller: messageController,
                              decoration: InputDecoration(
                                hintText: 'message',
                                hintStyle: GoogleFonts.gruppo(
                                  fontSize: 22,
                                  color:  Color.fromARGB(255, 175, 175, 175),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return '*Required';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        NeoPopButton(onTapUp: () async {
                              if (_formKey.currentState!.validate()) {
                                final response = await sendEmail(
                                    nameController.value.text,
                                    emailController.value.text,
                                    messageController.value.text);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  response == 200
                                      ? const SnackBar(
                                          content: Text('Message Sent!'),
                                          backgroundColor: Colors.green)
                                      : const SnackBar(
                                          content:
                                              Text('Failed to send message!'),
                                          backgroundColor: Colors.red),
                                );
                                nameController.clear();
                                emailController.clear();
                                messageController.clear();
                              }
                            },child:Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child:
                        Text("send",
                            style: GoogleFonts.abel(
                              color: Colors.black,
                              fontSize: 22,
                            )),

                  ), color: Colors.white)
                      ],
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
              )),
            ],
          ),
        ));
  }
}

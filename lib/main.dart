// ignore_for_file: prefer_const_constructors


import 'package:flutter_animate/flutter_animate.dart';
import 'package:gaura/home.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "gaura",
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Center(
                    child: Text(
                                    "hi",
                                    style:TextStyle(
                                      fontFamily: "Arimo",
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 139,
                                    ),
                                  ).animate().fadeOut(
                  duration: const Duration(seconds: 3),
                ), // Fade out animation for the text
            ),
            Home(
            ).animate().fadeIn(
                  delay: const Duration(seconds: 2),
                  duration: const Duration(seconds: 1),
                ),
          ],
        ),
      ),
    );
  }
}

    
    
    
    
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'hello',
//       home:

//           Home(),

//     );
//   }
// }

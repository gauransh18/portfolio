import 'package:flutter/material.dart';


import 'screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'gauransh sharma',
      theme: ThemeData(

        primarySwatch: Colors.teal,
      ),
      home: const HomePage(),
     // routes: {
     //
     //   '/': (context) => const Scaffold(),
     //
     //    '/second': (context) => const HomePage(),
     //  },
    );
  }
}

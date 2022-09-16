import 'package:flutter/material.dart';
import 'package:gauranshsharma/appbar.dart';

import 'hello.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //app bar neeche call kr diya
      body: Container(
          //background me gradient daal rhe idhar
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            gradient: //background me gradient daal rhe idhar
                LinearGradient(
              colors:
              // [Colors.black12, Colors.white],
              //[Colors.lightBlueAccent, Colors.indigoAccent],
              //[Colors.pinkAccent, Colors.red],
              //[Colors.orangeAccent, Colors.redAccent],
              // [Colors.transparent, Colors.white, Colors.transparent],
              //[Colors.amberAccent,Colors.amberAccent],
              //[Colors.amber, Colors.amber],
             // [Colors.greenAccent, Colors.blueAccent],
             [Color.fromARGB(255, 255, 252, 75), Color.fromARGB(255, 255, 72, 72)],


              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
          child: Column(
            children: const [
              appBar_custom(),
              //Spacer(),
              hiText(),

              //todo main content ka function call krna idar
            ],
          )),
    );
  }
}

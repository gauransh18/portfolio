import 'dart:html';

import 'package:flutter/material.dart';

class hiText extends StatelessWidget {
  const hiText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 180, top: 160),
      child: Row(
        children: [
          Column(
            children: const [
              Text(
                "Hello,\nI'm Gauransh.",
                style: TextStyle(
                  fontSize: 55.0,
                  fontFamily: 'LTCfamily',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              //about me here

              Text(
                "About me",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "WorkSansFamily",
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          

          //TODO picture of you with launguage and software names all around
        ],
      ),
    );
  }
}

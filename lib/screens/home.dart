import 'package:flutter/material.dart';
import 'package:gauranshsharma/elements/appbar.dart';

import '../elements/hello.dart';

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
                  [
                Color.fromARGB(255, 255, 252, 75),
                Color.fromARGB(255, 255, 72, 72)
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
          child: Column(
            children: [
              const appBar_custom(),
              //Spacer(),
              Flexible(
                child: Container(
                  child: Row(
                    children: [
                      Column(
                        children: const [
                          Text(
                            "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.",
                            overflow: TextOverflow.ellipsis,
                            // maxLines: 1,

                            // style: TextStyle(
                            //   fontSize: 55.0,
                            //   fontFamily: 'LTCfamily',
                            //   fontWeight: FontWeight.bold,
                            //   color: Colors.white,
                            // ),
                          ),

                          //about me here

                          Text(
                            "text",
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
                ),
              ),

              //todo main content ka function call krna idar
            ],
          )),
    );
  }
}

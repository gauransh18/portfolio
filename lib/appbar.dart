import 'package:flutter/material.dart';

//ignore: camel_case_types
class appBar_custom extends StatelessWidget {
  const appBar_custom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        //Container(
        // margin: const EdgeInsets.all(20),
        // padding: const EdgeInsets.all(20),
        // decoration: BoxDecoration(
        //     color: Colors.white,
        //     borderRadius: BorderRadius.circular(46),
        //     boxShadow: [
        //       BoxShadow(
        //         offset: const Offset(0, -2),
        //         blurRadius: 30,
        //         color: Colors.black.withOpacity(0.2),
        //       )
        //     ]),

        // child:
        Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child:
                Image.asset('assets/images/name_t.png', width: 50, height: 50),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextButton(
              child: const Text(
                'Home',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontFamily: "WorkSansFamily",
                  fontWeight: FontWeight.normal,
                ),
              ),
              onPressed:
                  () {}, //todo function call for start of the page (scroll to) **homepage return krdena 8-9-22
              // onPressed: Navigator.pushNamed(context, '/second');
            ),
          ),
          // const Padding(
          //padding: EdgeInsets.symmetric(horizontal: 10),
          //child:
          const TextButton(
            onPressed: null, //todo function call for about section (scroll to)

            child: Text('About',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontFamily: "WorkSansFamily",
                  fontWeight: FontWeight.normal,
                )),
          ),
          const TextButton(
              onPressed:
                  null, //todo function call for the art section (new page) :)

              child: Text('Art',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontFamily: "WorkSansFamily",
                    fontWeight: FontWeight.normal,
                  ))),

          // const TextButton(
          //   onPressed: null,
          //
          //   child: Text('Projects',
          //
          //   style: TextStyle(
          //
          //     fontSize: 14.0,
          //     color: Colors.grey,
          //   ))
          // ),

          const TextButton(
            onPressed: null,
            child: Text(
              'Contact',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.0,
                fontFamily: "WorkSansFamily",
                fontWeight: FontWeight.normal,
              ),
            ),
          )

          // ),
        ],
      ),
    );

    // );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ClimbHeigher4 extends StatefulWidget {
  const ClimbHeigher4({super.key});

  @override
  State<ClimbHeigher4> createState() => _ClimbHeigher4State();
}

class _ClimbHeigher4State extends State<ClimbHeigher4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/climbHeigher3');
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Color(0xff00339E),
                        child: Image.asset(
                          'assets/image/climbHeigherImage/Vector.png',
                          height: 65,
                          width: 53,
                        ),
                      ),
                      Container(
                        child: Card(
                          elevation: 0,
                          child: Image.asset(
                              'assets/image/climbHeigherImage/jobcard.png'),
                        ),
                      ),
                      Container(
                        child: Card(
                          elevation: 0,
                          child: Image.asset(
                              'assets/image/climbHeigherImage/jobcard2.png'),
                        ),
                      ),
                      Container(
                        child: Card(
                          elevation: 0,
                          child: Image.asset(
                              'assets/image/climbHeigherImage/jobcard6.png'),
                        ),
                      ),
                      Container(
                        child: Card(
                          elevation: 0,
                          child: Image.asset(
                              'assets/image/climbHeigherImage/jobcard3.png'),
                        ),
                      ),
                      Container(
                        child: Card(
                          elevation: 0,
                          child: Image.asset(
                              'assets/image/climbHeigherImage/jobcard4.png'),
                        ),
                      ),
                      Container(
                        child: Card(
                          elevation: 0,
                          child: Image.asset(
                              'assets/image/climbHeigherImage/jobcard5.png'),
                        ),
                      ),
                    ]),
              )),
        ));
  }
}

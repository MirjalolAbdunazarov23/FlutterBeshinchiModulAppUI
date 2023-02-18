import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ClimbHeigher extends StatefulWidget {
  const ClimbHeigher({super.key});

  @override
  State<ClimbHeigher> createState() => _ClimbHeigherState();
}

class _ClimbHeigherState extends State<ClimbHeigher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClimbHeigher Home'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        elevation: 0,
      ),
      backgroundColor: Color(0xff00339E),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 290),
              child: Image.asset(
                'assets/image/climbHeigherImage/slay.png',
                height: 657,
                width: 369,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 210),
              child: Image.asset(
                'assets/image/climbHeigherImage/Exclude.png',
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 430, left: 50),
              child: Image(
                  image: AssetImage(
                      'assets/image/climbHeigherImage/ClimbHeigher.png')),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 500, left: 114),
              child: Image(
                  image:
                      AssetImage('assets/image/climbHeigherImage/toptal.png')),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 640, left: 40),
              child: Container(
                width: 300,
                child: CupertinoButton(
                  color: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pushNamed('/climbHeigher2');
                  },
                  child: const Text(
                    'Start UI',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

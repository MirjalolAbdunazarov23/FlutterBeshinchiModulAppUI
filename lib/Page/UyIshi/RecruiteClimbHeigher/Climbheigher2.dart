import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ClimbHeigher2 extends StatefulWidget {
  const ClimbHeigher2({super.key});

  @override
  State<ClimbHeigher2> createState() => _ClimbHeigher2State();
}

class _ClimbHeigher2State extends State<ClimbHeigher2> {
  UserText3() {
    return Padding(
        padding: const EdgeInsets.only(left: 119, right: 123),
        child: Image.asset('assets/image/climbHeigherImage/Page2text.png'));
  }

  Widget InputButton() {
    return Container(
      height: 51,
      width: 261,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xff00339E)),
      child: MaterialButton(
        onPressed: () {},
        child: const TextField(
          keyboardType: TextInputType.name,
          decoration: InputDecoration(border: InputBorder.none),
        ),
      ),
    );
  }

  Widget InputButton1() {
    return Container(
      height: 51,
      width: 261,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xff00339E)),
      child: MaterialButton(
        onPressed: () {},
        child: const TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(border: InputBorder.none),
        ),
      ),
    );
  }

  Widget InputButton2() {
    return Container(
      height: 51,
      width: 261,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xff00339E)),
      child: MaterialButton(
        onPressed: () {},
        child: const TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(border: InputBorder.none),
        ),
      ),
    );
  }

  Widget Register(String text) {
    return Container(
      width: 235,
      height: 69,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xff00339E)),
      child: MaterialButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/climbHeigher3');
          },
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ClimbHeigher2 Page',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff00339E),
      ),
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
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
                SizedBox(height: 52),
                UserText('Username'),
                SizedBox(
                  height: 20,
                ),
                InputButton(),
                SizedBox(
                  height: 30,
                ),
                UserText('Email'),
                SizedBox(
                  height: 20,
                ),
                InputButton1(),
                SizedBox(
                  height: 30,
                ),
                UserText('Password'),
                SizedBox(
                  height: 20,
                ),
                InputButton2(),
                SizedBox(
                  height: 25,
                ),
                UserText3(),
                SizedBox(
                  height: 9,
                ),
                Register('Register'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget UserText(String sozlar) {
  return Padding(
    padding: const EdgeInsets.only(left: 119, right: 123),
    child: Text(
      sozlar,
      style: TextStyle(
          fontSize: 24, fontWeight: FontWeight.w700, color: Color(0xff00339E)),
    ),
  );
}

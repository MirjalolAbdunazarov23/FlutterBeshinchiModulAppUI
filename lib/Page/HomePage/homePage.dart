import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_modul_besh/Page/MyWallet/LoginPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
        centerTitle: true,
        backgroundColor: Colors.amber[400],
        elevation: 0,
      ),
      backgroundColor: Colors.amber.shade100,
      body: ListView(scrollDirection: Axis.vertical, children: [
        SafeArea(
          child: Column(
            children: [
              homePageMenu(context, '/animPage1', 'Animation'),
              homePageMenu(context, '/climbHeigher', 'ClimbHeigher'),
              homePageMenu(context, '/loginPage', 'LoginPage'),
              homePageMenu(context, '/registerlogin', 'Login Page Home'),
              homePageMenu(context, '/appleshopui', 'Apple Shop UI'),
              homePageMenu(context, '/doctorpage', 'Doctor Page'),
            ],
          ),
        ),
      ]),
    );
  }
}

Widget homePageMenu(BuildContext context, String pageName, String textName) {
  return Card(
    color: Colors.amber,
    elevation: 0,
    shadowColor: Colors.white,
    child: ListTile(
      onTap: () {
        Navigator.of(context).pushNamed(pageName);
      },
      title: Text(textName),
    ),
  );
}

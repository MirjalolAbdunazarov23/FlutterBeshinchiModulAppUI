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
  Future<bool> _ShowOurDialog() async {
    return await ShowOurDialog<bool>(
            context: context,
            barrierDismissable: true,
            builder: (context) => AlertDialog(
                  title: Text('hello'),
                  content: Text('chiqish'),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                        child: Text('ha')),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                        child: Text('yo'))
                  ],
                )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return _ShowOurDialog();
      },
      child: Scaffold(
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
              ],
            ),
          ),
        ]),
      ),
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

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyHederDrower extends StatefulWidget {
  const MyHederDrower({super.key});

  @override
  State<MyHederDrower> createState() => _MyHederDrowerState();
}

class _MyHederDrowerState extends State<MyHederDrower> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(
                    image:
                        AssetImage('assets/image/climbHeigherImage/slay.png'))),
          ),
          Text(
            'Rapid Text',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            'sakdnjs@gmail.com',
            style: TextStyle(color: Colors.white38, fontSize: 15),
          )
        ],
      ),
    );
  }
}

Widget MydrowerList() {
  return Container(
    padding: EdgeInsets.only(top: 15),
    child: Column(
      children: [
        Container(
            child: Card(
                elevation: 0,
                child:
                    ListTile(leading: Icon(Icons.home), title: Text('salom')))),
      ],
    ),
  );
}

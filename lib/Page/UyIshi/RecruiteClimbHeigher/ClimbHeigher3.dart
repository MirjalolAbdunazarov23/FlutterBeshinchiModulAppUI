import 'package:flutter/material.dart';

import 'MyHederDrower.dart';

class ClimbHeigher3 extends StatefulWidget {
  const ClimbHeigher3({super.key});

  @override
  State<ClimbHeigher3> createState() => _ClimbHeigher3State();
}

class _ClimbHeigher3State extends State<ClimbHeigher3> {
  bool click = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => Padding(
            padding: const EdgeInsets.only(left: 23),
            child: CircleAvatar(
              child: IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Image.asset('assets/image/climbHeigherImage/slay.png'),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 32),
            child: Icon(
              Icons.notifications_outlined,
              color: Colors.black,
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [MyHederDrower(), MydrowerList()],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
            bottom: true,
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          '40 Job Found',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 150),
                        child: TextButton(
                            onPressed: () {},
                            child: Text('All Reference',
                                style: TextStyle(
                                    color: Color(0xff00339E),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700))),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xff00339E),
                          ))
                    ],
                  ),
                ),
                container('jobcard'),
                container('jobcard2'),
                container('jobcard6'),
                container('jobcard3'),
                container('jobcard4'),
                container('jobcard5'),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/climbHeigher4');
                    },
                    child: Image.asset(
                      'assets/image/climbHeigherImage/button.png',
                      fit: BoxFit.cover,
                    )),
              ],
            )),
      ),
    );
  }
}

Container container(String image) {
  return Container(
    child: Card(
      elevation: 0,
      child: Image.asset('assets/image/climbHeigherImage/$image.png'),
    ),
  );
}

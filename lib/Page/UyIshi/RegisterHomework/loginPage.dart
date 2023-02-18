import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modul_besh/Page/UyIshi/RecruiteClimbHeigher/ClimbHeigher3.dart';

class LoginPageHome extends StatefulWidget {
  const LoginPageHome({super.key});

  @override
  State<LoginPageHome> createState() => _LoginPageHomeState();
}

class _LoginPageHomeState extends State<LoginPageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          physics: AlwaysScrollableScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          slivers: [
            SliverAppBar(
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(50),
                  child: Container(
                    width: double.maxFinite,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        )),
                  ),
                ),
                expandedHeight: 260,
                backgroundColor: Colors.green[500],
                flexibleSpace: FlexibleSpaceBar(
                    background: Padding(
                  padding: const EdgeInsets.only(left: 25, top: 100),
                  child: RichText(
                    text: TextSpan(
                        text: 'Log in\n',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w600),
                        children: [
                          TextSpan(
                              text: 'Welcome back',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400))
                        ]),
                  ),
                ))),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Card(
                      elevation: 1,
                      color: Colors.transparent,
                      shadowColor: Colors.black,
                      borderOnForeground: false,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                        child: TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              isDense: true,
                              label: Text(
                                'Email',
                                style: TextStyle(color: Color(0x66000000)),
                              ),
                              labelStyle: TextStyle(color: Color(0x66000000))),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 1,
                      color: Colors.transparent,
                      shadowColor: Colors.black,
                      borderOnForeground: false,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              isDense: true,
                              label: Text(
                                'Password',
                                style: TextStyle(color: Color(0x66000000)),
                              ),
                              labelStyle: TextStyle(color: Color(0x66000000))),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      width: double.maxFinite,
                      child: CupertinoButton(
                          alignment: Alignment.center,
                          color: Colors.green[700],
                          disabledColor: Colors.black,
                          borderRadius: BorderRadius.circular(50),
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                          onPressed: () {}),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        child: Text(
                          'Login with sns',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(
                          parent: BouncingScrollPhysics()),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CardField(
                            'Facebook',
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CardField('Sign up'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget CardField(
  String text,
) {
  return Container(
      height: 50,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.blue),
      child: Center(
          child: Text(
        text,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      )));
}

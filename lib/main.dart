import 'package:flutter/material.dart';
import 'package:flutter_modul_besh/Page/AnimationPage/animationPage1.dart';
import 'package:flutter_modul_besh/Page/DarsTort_DotorPage/Doctor_page_view.dart';
import 'package:flutter_modul_besh/Page/MyWallet/LoginPage.dart';
import 'package:flutter_modul_besh/Page/UyIshi/DarsUch/AppleShopUI.dart';
import 'package:flutter_modul_besh/Page/UyIshi/DarsUch/TrashPage.dart';
import 'package:flutter_modul_besh/Page/UyIshi/RecruiteClimbHeigher/ClimbHeigher.dart';
import 'package:flutter_modul_besh/Page/UyIshi/RecruiteClimbHeigher/ClimbHeigher3.dart';
import 'package:flutter_modul_besh/Page/UyIshi/RecruiteClimbHeigher/ClimbHeigher4.dart';
import 'package:flutter_modul_besh/Page/UyIshi/RecruiteClimbHeigher/Climbheigher2.dart';
import 'package:flutter_modul_besh/Page/UyIshi/RegisterHomework/loginPage.dart';
import 'package:flutter_modul_besh/Utils/routes/RoutePage.dart';
import 'Page/AnimationPage/animationPage2.dart';
import 'Page/HomePage/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        RoutePage.homePage.routeName: (context) => const HomePage(),
        RoutePage.animPage1.routeName: (context) => const AnimPage(),
        RoutePage.animPage2.routeName: (context) => const AnimPage2(),
        RoutePage.climbHeigher.routeName: (context) => const ClimbHeigher(),
        RoutePage.climbHeigher2.routeName: (context) => const ClimbHeigher2(),
        RoutePage.climbHeigher3.routeName: (context) => const ClimbHeigher3(),
        RoutePage.climbHeigher4.routeName: (context) => const ClimbHeigher4(),
        RoutePage.walletPage.routeName: (context) => const LoginPage(),
        RoutePage.registerPage.routeName: (context) => const LoginPageHome(),
        RoutePage.appleShopUI.routeName: (context) => const AppleShopUI(),
        RoutePage.trashPage.routeName: (context) => const TrashPage(),
        RoutePage.doctorPage.routeName: (context) => const DoctorListView(),
      },
      initialRoute: RoutePage.homePage.routeName,
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppleShopUI extends StatefulWidget {
  const AppleShopUI({super.key});

  @override
  State<AppleShopUI> createState() => _AppleShopUIState();
}

class _AppleShopUIState extends State<AppleShopUI> {
  final List<Widget> _listWidget = [
    const _MyCustomCardWidged(image: 'assets/image/DarsUchImage/bosh.jpg'),
    const _MyCustomCardWidged(image: 'assets/image/DarsUchImage/bulutlar.jpg'),
    const _MyCustomCardWidged(image: 'assets/image/DarsUchImage/cloud.jpg'),
    const _MyCustomCardWidged(image: 'assets/image/DarsUchImage/mount.jpg'),
    const _MyCustomCardWidged(image: 'assets/image/DarsUchImage/nature.jpg'),
    const _MyCustomCardWidged(image: 'assets/image/DarsUchImage/togdara.jpg'),
    const _MyCustomCardWidged(image: 'assets/image/DarsUchImage/bulutlar.jpg'),
    const _MyCustomCardWidged(image: 'assets/image/DarsUchImage/mount.jpg'),
    const _MyCustomCardWidged(image: 'assets/image/DarsUchImage/bosh.jpg'),
  ];

  final String appText = '7';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apple Shop UI'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            '/appleshopui', (route) => false);
                      },
                      child: Text(
                        appText,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      )),
                )),
          )
        ],
      ),
      drawer: Drawer(
          backgroundColor: Colors.black38,
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 200),
                    child: Container(
                      color: Colors.amber,
                      height: 400,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          'Mirjalol',
                          style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ReklamaImage(
                      context, 'assets/image/DarsUchImage/kasmonavt.jpg'),
                  ReklamaImage(context, 'assets/image/DarsUchImage/bosh.jpg'),
                  ReklamaImage(context, 'assets/image/DarsUchImage/nature.jpg'),
                  ReklamaImage(
                      context, 'assets/image/DarsUchImage/bulutlar.jpg'),
                  ReklamaImage(context, 'assets/image/DarsUchImage/cloud.jpg'),
                  ReklamaImage(context, 'assets/image/DarsUchImage/mount.jpg'),
                  ReklamaImage(
                      context, 'assets/image/DarsUchImage/togdara.jpg'),
                ],
              ),
            ),
            GridView.count(
              padding: EdgeInsets.all(20),
              reverse: false,
              shrinkWrap: true,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 2,
              childAspectRatio: 1,
              children: _listWidget,
            ),
          ],
        ),
      )),
    );
  }
}

Widget ReklamaImage(BuildContext context, String image) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    child: Container(
      height: 220,
      width: 355,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Lifestyle sale',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: 250,
            child: CupertinoButton(
              color: Colors.white,
              onPressed: () {
                Navigator.of(context).pushNamed('/trashpage');
              },
              child: Text(
                'Shop now',
                style: TextStyle(
                  color: Colors.blue[300],
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

class _MyCustomCardWidged extends StatelessWidget {
  final String image;

  const _MyCustomCardWidged({required this.image});

  @override
  Widget build(BuildContext context) {
    Future<bool> show() async {
      return true;
    }

    return WillPopScope(
      onWillPop: () {
        return show();
      },
      child: CupertinoContextMenu(
          actions: [
            CupertinoContextMenuAction(
              isDefaultAction: true,
              trailingIcon: Icons.shopping_cart_outlined,
              child: Text('Sale now'),
              onPressed: () {
                Navigator.of(context).pushNamed('/trashpage');
              },
            ),
            CupertinoContextMenuAction(
              isDestructiveAction: true,
              trailingIcon: Icons.remove_shopping_cart,
              child: Text('Not now'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              height: 200,
              width: 300,
            ),
          )),
    );
  }
}

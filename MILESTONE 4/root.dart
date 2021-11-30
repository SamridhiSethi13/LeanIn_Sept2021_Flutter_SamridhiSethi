import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/pages/account_page.dart';
import 'package:shopping_app/pages/cart_page.dart';
import 'package:shopping_app/pages/home_page.dart';
import 'package:shopping_app/pages/more_page.dart';
import 'package:shopping_app/pages/store_page.dart';
import '../constants/constant.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;
  AppBar appbar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: getAppBar(),
      bottomNavigationBar: getFooter(),
      body: getBody(activeTab),
    );
  }

  // ignore: missing_return
  Widget getAppBar() {
    switch (activeTab) {
      case 0:
        appbar = null;
        break;
      case 1:
        appbar = null;
        break;
      case 2:
        return AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.8,
          title: const Text(
            "ACCOUNT",
            style: TextStyle(color: Colors.black),
            textAlign: TextAlign.center,
          ),
        );
      case 3:
        return AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.8,
          title: const Text(
            "CART",
            style: TextStyle(color: Colors.black),
            textAlign: TextAlign.center,
          ),
        );
      case 4:
        return AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.8,
          title: const Text(
            "MORE",
            style: TextStyle(color: Colors.black),
            textAlign: TextAlign.center,
          ),
        );
    }
  }

  Widget getFooter() {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border:
                Border(top: BorderSide(color: Colors.grey.withOpacity(0.2)))),
        child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(itemsTab.length, (index) {
                return IconButton(
                    onPressed: () {
                      setState(() {
                        activeTab = index;
                      });
                    },
                    icon: Icon(
                      itemsTab[index]['icon'],
                      size: itemsTab[index]['size'],
                      color: activeTab == index ? Colors.orange : Colors.black,
                    ));
              }),
            )));
  }
}

Widget getBody(int activeTab) {
  return IndexedStack(index: activeTab, children: const [
    HomePage(),
    StorePage(),
    AccountPage(),
    CartPage(),
    MorePage(),
  ]);
}

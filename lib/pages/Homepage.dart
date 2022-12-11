// ignore_for_file: file_names
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/pages/CartPage.dart';
import 'package:shopping/widgets/CategoriesWidget.dart';
import 'package:shopping/widgets/HomeAppBar.dart';
import 'package:shopping/widgets/ItemsWidget.dart';

var selectedIndex = 0;
var screenList = [HomePage(), CartPage(), Text("Ben Yoğum")];

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) => setState(() {
          selectedIndex = index;
        }),
        height: 70,
        color: Colors.purple.shade200,
        items: const [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            CupertinoIcons.cart_fill,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.list,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      HomeAppBar(),
      Container(
        // height: 500,
        padding: const EdgeInsets.only(top: 15),
        decoration: const BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 5),
                    height: 50,
                    width: 300,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border: InputBorder.none, hintText: "Burada Ara..."),
                    ),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.camera_alt,
                    size: 27,
                    color: Colors.purple.shade200,
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 10,
              ),
              child: Text(
                "Kategoriler",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple.shade200),
              ),
            ),
            //Kategoriler.......
            CategoriesWidget(),

            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Text(
                "Favori Satış",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple.shade200,
                ),
              ),
            ),
            ItemsWidget(),
          ],
        ),
      )
    ]);
  }
}

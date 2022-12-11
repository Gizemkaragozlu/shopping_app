import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:shopping/pages/ItemPage.dart';
import 'Shopping.dart';

var itemList = [
  Shopping("images/1.jpg", 55, 60, "Mavi Kazak", "Yumuşak Kazak", 1),
  Shopping("images/2.jpg", 1400, 20, "Apple Watch", "Apple Watch SE", 1),
  Shopping("images/3.jpg", 30, 30, "Yeşil Sweat", "Kapüşonlu Sweatshirt", 1),
  Shopping("images/4.jpg", 700, 45, "Ayakkabi", "Deri, Tekstil , Termo", 1),
  Shopping("images/5.jpg", 300, 25, "Ceket ", "Kolej Yaka Ceket", 1),
  Shopping("images/6.jpg", 190, -10, "Çanta", "Siyah Çanta ", 1),
];

class ItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 0; i < itemList.length; i++)
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.purple.shade200,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Text(
                        "${itemList[i].indirim}",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (builder) => ItemPage(shopping: itemList[i])));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      "images/${i + 1}.jpg",
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "${itemList[i].baslik}",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.purple.shade200,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "${itemList[i].aciklama}",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.purple.shade200,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${itemList[i].shopping_fiyat}",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple.shade200,
                        ),
                      ),
                      Icon(
                        Icons.shopping_cart_checkout,
                        color: Colors.purple.shade200,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

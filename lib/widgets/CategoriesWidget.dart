import 'package:flutter/material.dart';

var categoriIsimleri = ["Kazak", "Saat", "Sweat", "Ayakkabi", "Ceket", "Çanta"];

class CategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          //for (int i = 1; i < 7; i++)
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                for (int i = 0; i < categoriIsimleri.length; i++)
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Image.asset(
                            // for döngüsü birer birer gösterecek
                            "images/${i + 1}.jpg",
                            width: 50,
                            height: 50,
                          ),
                          Text(
                            categoriIsimleri[i],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.purple.shade200),
                          )
                        ],
                      )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

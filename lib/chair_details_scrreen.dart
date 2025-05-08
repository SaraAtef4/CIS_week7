import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:week7/color_choise.dart';

class ChairDetailsScrreen extends StatefulWidget {
  @override
  State<ChairDetailsScrreen> createState() => _ChairDetailsScrreenState();
}

class _ChairDetailsScrreenState extends State<ChairDetailsScrreen> {
  bool isFavorit = false;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Details',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_circle_left_outlined, size: 40),
        ),
        actions: [
          Icon(
            isFavorit ? Icons.favorite_border : Icons.favorite,
            color: Colors.red,
            size: 40,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://calico-pansy-a98.notion.site/image/attachment%3Ab268ac60-f0d1-4ff6-9ae3-11a277a211e9%3AR-removebg-preview.png?table=block&id=1b53f5d2-0d4b-80e1-a743-edf85d60594a&spaceId=69265367-28f9-442a-baad-99d149be1c46&width=480&userId=&cache=v2',
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Chair',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    color: Colors.grey.shade600,
                  ),
                ),
                Text(
                  '\$212',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(height: 15),
            Container(
              width: MediaQuery.of(context).size.width * .8,
              child: Text(
                'Minimalist style with pillow',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
            ),
            Row(
              children: [
                ColorChoise(color: Colors.indigo),
                ColorChoise(color: Colors.red),
                ColorChoise(color: Colors.yellow),
                ColorChoise(color: Colors.green),
                Spacer(),
                Container(
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey.shade300),
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {
                          if (count == 0) {
                            count = 0;
                          } else {
                            count--;
                          }

                          setState(() {});
                        },
                        icon: Icon(Icons.remove),
                      ),
                      Text(count.toString()),
                      IconButton(
                        onPressed: () {
                          count++;
                          setState(() {});
                        },
                        icon: Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        spreadRadius: 2,
                        blurRadius: 6,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: () {
                      isFavorit = !isFavorit;
                      setState(() {});
                    },
                    icon: Icon(
                      isFavorit ? Icons.favorite_border : Icons.favorite,
                      color: Colors.red,
                      size: 40,
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    width: 300,height: 60,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          spreadRadius: 2,
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Text(
                      textAlign: TextAlign.center,
                      'Add to cart',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

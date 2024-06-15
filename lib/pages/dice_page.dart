import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text(
          "Dice App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  // shape: BoxShape.circle,
                ),
                padding: EdgeInsets.all(16),
                width: 200,
                height: 200,
                child: Image.asset("assets/images/dice$n.png")),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      if (n > 1) {
                        n--;
                      } else {
                        n;
                      }
                      setState(() {});
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                    )),
                ElevatedButton(
                    onPressed: () {
                      if (n < 6) {
                        n++;
                      } else {
                        n;
                      }
                      setState(() {});
                    },
                    child: Icon(
                      Icons.arrow_forward_ios,
                    )),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
                onPressed: () {
                  n = Random().nextInt(6) + 1;
                  setState(() {});
                },
                child: Text("Random")),
          ],
        ),
      ),
    );
  }
}

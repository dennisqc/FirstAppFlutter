import 'package:flutter/material.dart';
import 'package:myfirstproject/constants.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // const HomePage({super.key});
  int x = 0;
  int y = 0;
  void increment() {
    x += 100;
    y += 100;
    setState(() {});
  }

  int increment100(int variable) {
    return variable += 100;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 33, 39, 213),
        title: Text("Stateles and satefull"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "x",
                      style: titulo,
                    ),
                    Text(
                      x.toString(),
                      style: titulo,
                    )
                  ],
                ),
                VerticalDivider(
                  color: Colors.black,
                  width: 100,
                  thickness: 2,
                ),
                Column(
                  children: [
                    Text(
                      "y",
                      style: titulo,
                    ),
                    Text(
                      y.toString(),
                      style: titulo,
                    )
                  ],
                )
              ],
            ),
            Divider(
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      x = increment100(x);
                      setState(() {});
                      print("Hola PResionaste");
                    },
                    child: Text("Cambiar x ")),
                ElevatedButton(
                    onPressed: () {
                      y = increment100(y);
                      setState(() {});
                      print("Hola PResionaste");
                    },
                    child: Text("Cambiar y "))
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  increment();
                  print("Hola PResionaste");
                },
                child: Text("Cambiar a ambos "))
          ],
        ),
      ),
    );
  }
}

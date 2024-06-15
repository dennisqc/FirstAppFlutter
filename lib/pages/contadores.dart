import 'package:flutter/material.dart';
import 'package:myfirstproject/pages/extension.dart';

class contadores extends StatefulWidget {
  const contadores({super.key});

  @override
  State<contadores> createState() => _contadoresState();
}

class _contadoresState extends State<contadores> {
  int a = 0;
  int b = 0;
  int c = 0;
  int d = 0;
  int e = 0;
  int total = 0;
  void sumaTotal() {
    total = a + b + c + d + e;
  }

  void reset() {
    setState(() {
      a = 0;
      b = 0;
      c = 0;
      d = 0;
      e = 0;
      total = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text(
          "Contador",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Text(
                      '$total',
                      style: TextStyle(
                        fontSize: 60,
                        color: Colors.blue,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(top: 40, bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text("Contador 1",
                            style:
                                TextStyle(fontSize: 25, color: Colors.yellow)),
                        Text("$a",
                            style:
                                TextStyle(fontSize: 25, color: Colors.yellow)),
                        ElevatedButton(
                            onPressed: () {
                              a++;
                              sumaTotal();
                              setState(() {});
                            },
                            child: Text(
                              "Add 1",
                            ))
                      ],
                    ),
                    Column(
                      children: [
                        Text("Contador 2",
                            style:
                                TextStyle(fontSize: 25, color: Colors.yellow)),
                        Text("$b", style: estilos),
                        ElevatedButton(
                            onPressed: () {
                              b++;
                              sumaTotal();
                              setState(() {});
                            },
                            child: Text("Add 2"))
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 1,
              ),
              Padding(
                padding: EdgeInsets.only(top: 40, bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text("Contador 3", style: estilos),
                        Text("$c", style: estilos),
                        ElevatedButton(
                            onPressed: () {
                              c++;
                              sumaTotal();
                              setState(() {});
                            },
                            child: Text("Add 3"))
                      ],
                    ),
                    Column(
                      children: [
                        Text("Contador 4", style: estilos),
                        Text("$d", style: estilos),
                        ElevatedButton(
                            onPressed: () {
                              d++;
                              sumaTotal();
                              setState(() {});
                            },
                            child: Text("Add 4"))
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 0.5,
              ),
              Padding(
                padding: EdgeInsets.only(top: 40, bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text("Contador 5", style: estilos),
                        Text("$e", style: estilos),
                        ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 17, 0, 255)),
                            ),
                            onPressed: () {
                              e++;
                              sumaTotal();
                              setState(() {});
                            },
                            child: Text(
                              "Add 5",
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          reset();
        },
        child: Text("RESET"),
        tooltip: 'Subir',
        shape: CircleBorder(),
      ),
    );
  }
}

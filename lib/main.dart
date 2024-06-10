import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {},
              );
            },
          ),
          title: Text(
            "Bienvenido",
            // style: TextStyle(color: Colors.yellow),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
              tooltip: "Buscar",
            ),
            IconButton(
              icon: Icon(Icons.save_alt),
              onPressed: () {},
              tooltip: "Descargar",
            ),
          ],
        ),
        body: Column(
          children: [
            Image.network(
                "https://viajes.nationalgeographic.com.es/medio/2018/03/01/machu-picchu_5ff969ae_1280x720.jpg"),
            Container(
                padding: const EdgeInsets.all(18),
                child: Text(
                  "Monarch population soars 4,900 percent since last in thrilling 2021 western migration",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RobotoMono'),
                )),
            Padding(
              padding: const EdgeInsets.only(right: 18, left: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.network(
                        "https://www.dzoom.org.es/wp-content/uploads/2018/02/fondos-retratos-16-1024x682.jpg",
                        fit: BoxFit.contain,
                        height: 50,
                        width: 50,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text("By Andy Con"),
                    ],
                  ),
                  Column(
                    children: [Text("1Hr ago")],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  barIcon(("8 Coments"), Icons.textsms_outlined),
                  barIcon("34 Likes", Icons.favorite_border),
                  barIcon("Share", Icons.share_outlined)
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.only(right: 18, left: 18),
                child: Text(
                    "Lorem ipsum is a placeholder text used in graphic design and publishing to demonstrate the visual style of a document, webpage, or typeface. It's intended to be a sample, not to be read as meaningful sentences. Lorem ipsum is essentially nonsense language, a garbled fragment of a longer Latin text written by the Roman philosopher Cicero in the 1st century BCE.")),
            Container(
                padding: const EdgeInsets.only(right: 18, left: 18),
                child: Text(
                    "Lorem ipsum is a placeholder text used in graphic design and publishing to demonstrate the visual style of a document, webpage, or typeface. It's intended to be a sample, not to be read as meaningful sentences. Lorem ipsum is essentially nonsense language, a garbled fragment of a longer Latin text written by the Roman philosopher Cicero in the 1st century BCE.")),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.arrow_upward_outlined),
        ),
      ),
    );
  }
}

Widget barIcon(String accion, IconData icono) {
  return Row(
    children: [
      Icon(
        icono,
      ),
      SizedBox(
        width: 8,
      ),
      Text(accion)
    ],
  );
}

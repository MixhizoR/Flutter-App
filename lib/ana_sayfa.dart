import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {
  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Image(image: AssetImage("assets/cat.webp")),
            Text("Yildizimi cko svym⭐"),
            Text(_sayac.toString()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _sayac--;
                      });
                    },
                    child: Icon(Icons.remove),
                    style: ElevatedButton.styleFrom(
                        elevation: 10,
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.black,
                        shape: StarBorder())),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _sayac++;
                      });
                    },
                    child: Icon(Icons.add),
                    style: ElevatedButton.styleFrom(
                        elevation: 10,
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.black,
                        shape: StarBorder())),
              ],
            )
          ]),
        ));
  }

  void onPressed() {
    setState(() {
      _sayac++;
    });
  }
}

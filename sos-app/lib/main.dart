import 'package:flutter/material.dart';

void main() {
  runApp(EmergencySOS());
}

class EmergencySOS extends StatelessWidget {
  //const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('EMERGENCY SOS',style: TextStyle(fontSize: 35, color: Colors.white),),
          centerTitle: true,



          backgroundColor: Colors.red,

        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            createButton('Fire', Colors.orange),
            createButton('Ambulance', Colors.pink),
            createButton('Land Slide', Colors.purple),
            createButton('Flood', Colors.blue),
            createButton('Rape', Colors.yellow),
            createButton('Electricity', Colors.green),
            createButton('Water', Colors.blueAccent),
            createButton('Police', Colors.redAccent),
            createButton('Bomb', Colors.black),
            createButton('Hospital', Colors.brown),

          ],
        ),
      ),
    );
  }

  Widget createButton(String title, Color color) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(15),
        child: InkWell(
          onTap: () {
            //  button click logic here
          },
          child: Center(
            child: Text(
              title,
              style: TextStyle(fontSize: 35, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

}




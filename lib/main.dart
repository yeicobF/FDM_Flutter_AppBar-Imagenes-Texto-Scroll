import 'dart:core'; // List<tipo>
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      "assets/img/scorpion-spidy-PS4.jpeg",
      "assets/img/scorpion-spidy-PS4-FULL.jpg",
      "assets/img/TLOU2-Ellie-bote-final.png",
    ];
    final List<String> textArray = [
      "Scorpion, spidy",
      "Spidy, scorpion",
      "Ellie",
    ];
    return MaterialApp(
      title: 'FDM - MAQUETACIÓN 2',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MAQUETACIÓN 2"),
          backgroundColor: Colors.red,
        ),
        body: SafeArea(
          // PARA QUE SE PUEDAN CREAR n OBJETOS DE LA LISTA.
          // No permite que se reordenen los objetos de la lista. Para esto
          // habría que utilizar una de las 2 siguientes opciones:
          //  - ListView
          //  - ListView.custom
          // 
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 3,
            itemBuilder: (_, index) {
              return
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    // Con "Expanded" se toma todo el tamaño disponible de la
                    // pantalla, por lo que se dividirá mitad y mitad entre el
                    // texto y la imagen.
                    Expanded(
                      // flex: 1,
                      child: Image(
                        fit: BoxFit.cover,
                        // Se generan itemCount imágenes.
                        image: AssetImage(images[index]),
                        // alignment: AxisDirection.left,
                      ),
                    ),
                    Expanded(
                      // flex: 1,
                      child: Text(
                        // Se generan itemCount textos.
                        textArray[index],
                      ),
                    ),
                  ],
                );
            }
          ),
        ),
      ),
    );
  }
}

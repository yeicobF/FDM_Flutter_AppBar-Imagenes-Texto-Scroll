import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 3,
            itemBuilder: (_, index) {
              return
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    const Image(
                      image: AssetImage("assets/img/scorpion-spidy-PS4.jpeg"),
                    ),
                    const Text(
                        "hola"
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

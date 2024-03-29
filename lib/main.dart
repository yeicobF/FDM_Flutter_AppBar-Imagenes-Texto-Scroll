import 'dart:core'; // List<tipo>
import 'dart:math'; // Números random.
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  // Lista de nombres de imágenes.
  List<String> images = [];

  // Generar un número aleatorio dentro de un rango.
  // https://stackoverflow.com/questions/11674820/how-do-i-generate-random-numbers-in-dart
  int random(int min, int max){
    final random = Random();
    return min + random.nextInt(max - min);
  }

  // Método para mostrar una imagen en pantalla. Se envía el índice de la imagen
  // a mostrar.
  Widget displayExpandedImage(int imageIndex) {
    return 
      // Con "Expanded" se toma todo el tamaño disponible de la
      // pantalla, por lo que se dividirá mitad y mitad entre el
      // texto y la imagen.
      Expanded(
        // flex: 1,
        child: Image(
          fit: BoxFit.cover,
          // Se generan itemCount imágenes.
          image: AssetImage(images[imageIndex]),
          // alignment: AxisDirection.left,
        ),
      );

  }

  // Mostrar un texto dependiendo del índice.
  Widget displayImageText(int textIndex) {
    final List<String> textArray = [
      "Scorpion mural",
      "Spidy, scorpion",
      "Spidy",
    ];
    return
      Expanded(
        // flex: 1,
        child: Text(
          // Se generan itemCount textos.
          textArray[textIndex],
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.cyanAccent[700],
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
      );
  }

  // Método para mostrar las primeras 3 imágenes y sus textos.
  // Se utiliza un ListView.builder para en caso de que se requiera hacer un
  // scroll.
  Widget displayImagesAndText() {
    return
      ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 3,
        itemBuilder: (_, index) {
          // Lista con los widgets que se mostrarán en orden.
          // Esto es para mostrar la imagen y después el texto, dependiendo
          // del índice actual.
          final List<Widget> displayWidgetsInOrder = [];
          if (index == 0 || (index % 2 == 0)) {
            // Guardar imagen, luego texto.
            displayWidgetsInOrder.add(displayExpandedImage(index));
            displayWidgetsInOrder.add(displayImageText(index));
          }
          else {
            // Guardar texto, luego imagen.
            displayWidgetsInOrder.add(displayImageText(index));
            displayWidgetsInOrder.add(displayExpandedImage(index));
          }
          return
            Container(
              color: Colors.black,
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  // Muestra una imagen dependiendo del índice que se envíe.
                  // Dependiendo de cómo se hayan guardado los valores en la
                  // lista, se muestran en ese orden guardado.
                  displayWidgetsInOrder[0],
                  displayWidgetsInOrder[1],
                ],
              )
            );
        }
      );
  }

  // Mostrar una lista de imágenes con un texto que indique el nombre de la
  // imagen. Se manda el número de imágenes a generar. Esto para hacer un
  // scroll.
  // - Si mandamos "null", se generarán imágenes de forma infinita.
  Widget scrollableImages(int numberOfImages) {
    return
      ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: numberOfImages,
        shrinkWrap: true,
        
        itemBuilder: (_, index) {
          // Generamos un número de imagen aleatorio. No ponerlo aquí porque se
          // estarán cambiando en tiempo real.
          // final numberOfImage = random(0, images.length);

          // Hay que reiniciar el índice si se pasa del número de elementos.
          // El índice irá avanzando, y cuando el index == total de impagenes,
          // el índice será = 0. De esta forma avanza y se reinicia.
          // - Esto es por si queremos imágenes secuenciales.
          index = index % images.length;

          // Mejor generaré números aleatorios.
          

          return
            // Regresamos una columna con todos los elementos.
            Row(
              children: <Widget>[
            // Column(
            //   mainAxisSize: MainAxisSize.min,
            //   // size,
            //   children: <Widget>[
                Expanded(
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(images[index]),
                    // image: AssetImage(images[numberOfImage]),
                  ),
                ),
              // ESTO DE ABAJO PONE TEXTO A LA DERECHA DE LAS IMÁGENES, PERO YO
              // LO QUERÍA TENER ABAJO, SOLO QUE NO PUDE HACERLO CON COLUMN Y YA
              // NO DUPE CÓMO HACERLO.

                // Expanded(
                //   child: Text(
                //     // Mostrar la ruta relativa de las imágenes.
                //     images[index],
                //     textAlign: TextAlign.center,
                //     style: TextStyle(
                //       color: Colors.deepOrange[400],
                //       fontWeight: FontWeight.w600,
                //       fontSize: 15.0,
                //       // backgroundColor: Colors.grey[200],
                //     ),
                //   ),
                // ),
            //   ],
            // ),
              ],
            );
        }
      );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Para que no se repitan elementos cada que reinicion la app.
    images.clear();
    images = [
    "assets/img/scorpion-spidy-PS4.jpeg",
    "assets/img/scorpion-spidy-PS4-FULL.jpg",
    "assets/img/spiderman-volteando.jpg",
    "assets/img/spiderman-analizando.jpg",
    "assets/img/TLOU2-ciudad-en-llamas.png",
    "assets/img/TLOU2-Ellie-bote-final.png",
    "assets/img/TLOU2-Ellie-encima-de-dinosaurio-museo.png",
    "assets/img/TLOU2-Ellie-Joel-jirafa-museo.png",
  ];
    // AGREGAR LAS IMÁGENES DE GOW.
    for (int i = 0; i < 8; i++) {
      images.add("assets/img/gow-$i.jpg");
    }
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
          centerTitle: true,
          title: const Text(
              "MAQUETACIÓN 2",
              // textAlign: TextAlign.center,
            ),
          backgroundColor: Colors.red,
        ),
        // SafeArea es para no utilizar área de la barra de notificaciones
        // o del área inferior.
        body: SafeArea(
          // PARA QUE SE PUEDAN CREAR n OBJETOS DE LA LISTA.
          // No permite que se reordenen los objetos de la lista. Para esto
          // habría que utilizar una de las 2 siguientes opciones:
          //  - ListView
          //  - ListView.custom
          // 
          // - Con un Column dentro del SafeArea se puede poner más de un
          // Widget.
         
          // child: 
          //     scrollableImages(20),
          

          // child: Container(
          //   width: double.infinity,
          child: Column(
            // verticalDirection: VerticalDirection.up,
            mainAxisSize: MainAxisSize.min,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Me agrega espacio que no quiero debajo de este Widget.
              // Quisiera quitarlo.
              // Padding
              Flexible(
                // width: double.infinity,
                // fit: BoxFit.fitHeight,
                //   Se muestran las 3 imágenes con sus textos en el orden deseados.
                // fit: FlexFit.tight,
                child: displayImagesAndText(),
              ),
              Flexible(
                // fit: FlexFit.tight,
                child: scrollableImages(50),
              ),
            ],
          ),
          // ),
          
        ),
      ),
    );
  }
}

// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class about extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "ASCENDENZA",
                style: TextStyle(
                    fontFamily:'RobotoMono',
                    fontSize: 37,
                    color: Colors.red[900],
              )
              )],
          ),
          Flexible(
            child: Container(
              child: Text(
                  "Bienvenidos a ASCENDENZA, un lugar que te transportará hacia la auténtica comida Italiana, gracias a nuestra gran y variada selección de platillos",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300
                  ),
                  textAlign: TextAlign.justify),
            ),
          ),
                    Flexible(
            child: Container(
              child: Text(
                  "Ubicados en: Av. Circunvalación Poniente, Vista del Valle, Naucalpan de Juárez, visitanos !!",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                  ),
                  textAlign: TextAlign.justify),
            ),
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://cdn.kiwilimon.com/articuloimagen/2574/2575.jpg',
                  cacheHeight: 32,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                ),
                Image.network(
                  'https://www.eluniversal.com.mx/sites/default/files/2019/09/18/comida_italiana.jpg',
                  cacheHeight: 32,
                )
              ],
            ),
          ),
        ]));
  }
 
}

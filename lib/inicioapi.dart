// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'preapi.dart';
import 'posapi.dart';

class chat extends StatelessWidget {
  String fondo = "";
  Future<void> dato() async {
    obtieneDatos dat = new obtieneDatos();
    regreso r = await dat.getdatos("api");
    fondo = r.fondo;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        onDrawerChanged: (isOpened) => dato(),
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Platillos'),
        ),
        body: Container(
          margin: EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              fondo != ""
                  ? Image.network(fondo)
                  : ElevatedButton(
                      onPressed: () => dato(),
                      child: Text("Obtener background"),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          fixedSize: Size(300, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                    ),
            ],
          ),
        ));
  }
}

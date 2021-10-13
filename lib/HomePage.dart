// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:practica2/about.dart';
import 'nWebView.dart';
import 'contacto.dart';
import 'about.dart';
import 'inicioapi.dart';

class inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(tabs: [
                Tab(icon: Icon(Icons.emoji_food_beverage_sharp)),
                Tab(icon: Icon(Icons.info_outline)),
                Tab(icon: Icon(Icons.contact_mail)),
                Tab(icon: Icon(Icons.insert_emoticon)),
                // Iconos
              ]),
              title: Text("ASCENDENZA"),
              backgroundColor: Colors.blueGrey[900],
            ),
            body: TabBarView(children: [
              about(),
              contacto(),
              nWebView('https://www.ascendenza.com.mx/'),
              chat(),
              
            ]),
          )),
      debugShowCheckedModeBanner: false,
    );
  }
}

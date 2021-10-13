import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'dart:io';

class contacto extends StatefulWidget {
  @override
  _contactoState createState() => _contactoState();
}

class _contactoState extends State<contacto> {
  llamada() async {
    const url = 'tel:+525575898979';
    if (await canLaunch(url)) {
      launch(url);
    } else {
      throw 'Ha ocurrido un error en la conexión hacia: $url';
    }
  }

  mensaje(String msj, List<String> d) async {
    String r =
        await sendSMS(message: msj, recipients: d).catchError((Object error) {
      print(error);
    });
    print(r);
  }

  openwhatsapp(String message, String destinatario) async {
    var whatsapp = destinatario;
    var whatsappURl_android =
        "whatsapp://send?phone=" + whatsapp + "&text=" + message;
    var whatappURL_ios = "https://wa.me/$whatsapp?text=${Uri.parse(message)}";

    if (Platform.isIOS) {
      // for iOS phone only
      try {
        await launch(whatappURL_ios, forceSafariVC: false);
      } catch (e) {
        print(
            e); // although the exception occurs, this never happens, and I would rather catch the exact canLaunch exception
      }
    } else {
      try {
        await launch(whatsappURl_android);
      } catch (e) {
        print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(25),
              width: 100,
              child: TextButton(
                child: Text(
                  'Teléfono',
                  style: TextStyle(fontSize: 14.0),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.red[900], onPrimary: Colors.white70),
                onPressed: llamada,
              ),
            ),
            Container(
              margin: EdgeInsets.all(25),
              width: 100,
              child: TextButton(
                child: Text(
                  'Enviar SMS',
                  style: TextStyle(fontSize: 14.0),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.red[900], onPrimary: Colors.white70),
                onPressed: () {
                  String msj = "Bienvenido";
                  List<String> d = ["525548539977", "525548539977"];
                  mensaje(msj, d);
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(25),
              width: 100,
              child: TextButton(
                child: Text(
                  'WHATSAPP',
                  style: TextStyle(fontSize: 14.0),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.red[900], onPrimary: Colors.white70),
                onPressed: () {
                  String destinatario = "+525548539977";
                  String message = "Bienvenido";
                  openwhatsapp(destinatario, message);
                },
              ),
            ),
          ],
        ),
      )),
      debugShowCheckedModeBanner: false,
    );
  }
}

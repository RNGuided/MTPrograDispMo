// ignore_for_file: unused_import, camel_case_types, file_names

import 'package:flutter/material.dart';
import 'posapi.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class obtieneDatos {
  Future<String> getapi(String numero) async {
    String url = 'https://foodish-api.herokuapp.com/api/';
    print(url);
    final response = await http.get(Uri.parse(url));
    print(response.body);
    return response.body.toString();
  }

  Future<regreso> getdatos(String numero) async {
    String myregreso = '';
    myregreso = await getapi(numero);
    Map<String, dynamic> data = json.decode(myregreso);
    regreso r = regreso(fondo: data['image']);
    return r;
  }
}

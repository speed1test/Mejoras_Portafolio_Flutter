import 'package:flutter/material.dart';
import 'package:pantallas_flutter/Activity/loading.dart';
import 'package:pantallas_flutter/Activity/home.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      "/" : (context) => Loading(),
      "/home" : (context) => Home()
    },
  ));
}



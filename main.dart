import 'package:flutter/material.dart';
import 'package:ninja/home.dart';
import 'package:ninja/previous.dart';
import 'package:ninja/coco.dart';
import 'package:ninja/newcontact.dart';

void main() => runApp(MaterialApp(
  //debugShowCheckedModeBanner: false,
  initialRoute: '/',
  routes: {
    '/': (context) => Home(),
    '/previous': (context) => Previous(),
    '/coco': (context) => Coco(),
    '/newcontact': (context) => Newcontact(),
  },
));



import 'package:flutter/material.dart';
import 'package:ninja/home.dart';
import 'package:ninja/previous.dart';
import 'package:ninja/coco.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Home(),
    '/previous': (context) => Previous(),
    '/coco': (context) => Coco(),
  },
));



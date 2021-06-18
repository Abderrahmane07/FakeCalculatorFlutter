import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if(!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },

      child: MaterialApp(
        title: 'Calculator',
        home: Scaffold(
          body: myWidget()
          ),
        ),
    );
  }
}

Widget myWidget() {
  return Column(
    children: <Widget>[
      Container(
        child: TextField(
          decoration: InputDecoration.collapsed(hintText: 'jwana'),
        ),
        padding: EdgeInsets.all(100),
        margin: EdgeInsets.all(20),
        color: Colors.blue[50],
      ),
      Container(
        width: double.infinity,
        height: 460,
        color: Colors.blue[200],
        alignment: Alignment.topCenter,
        child: Container(
          height: 92,
          //width: 200,
          color: Colors.red,
          // child: Row(
          //   children: <Widget>[
          //     FractionallySizedBox(
          //       widthFactor: 0.25,
          //       child: Container(
          //         color: Colors.green,
          //         ),
          //     ),
          //     FractionallySizedBox(
          //       widthFactor: 0.25,
          //       child: Container(
          //         color: Colors.green,
          //         ),
          //     ),
          //     FractionallySizedBox(
          //       widthFactor: 0.25,
          //       child: Container(
          //         color: Colors.green,
          //         ),
          //     ),
          //     FractionallySizedBox(
          //       widthFactor: 0.25,
          //       child: Container(
          //         color: Colors.green,
          //         ),
          //     ),
          // ],
          // ),
        ),
        // child: TextField(
        //   decoration: InputDecoration.collapsed(hintText: 'Abdellah'),
        // ),
        
        // padding: EdgeInsets.all(100),
        // margin: EdgeInsets.all(50),
        
      ),
    ],
  );
}

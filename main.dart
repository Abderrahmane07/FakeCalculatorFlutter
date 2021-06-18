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
        title: 'FriendlyChat',
        home: Scaffold(
          body: Column(
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
                // child: TextField(
                //   decoration: InputDecoration.collapsed(hintText: 'Abdellah'),
                // ),
                width: double.infinity,
                height: 460,
                // padding: EdgeInsets.all(100),
                // margin: EdgeInsets.all(50),
                color: Colors.blue[200],
              ),
            ],
          )
          ),
        ),
    );
  }
}

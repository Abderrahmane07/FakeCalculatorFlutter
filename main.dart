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
  fctBox(Color couleur, String symbol){
    return Expanded(
      flex: 25,
      child: InkWell(
        onTap: (){
          print("Container clicked");
        },
        child: Container(
          height: 92,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              symbol,
              style: TextStyle(fontSize: 50),
            ),
          ),
          color: couleur,
        ),
      )
    );
  }
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
        child: Column(
          children: <Widget>[
            Container(
              height: 92,
              //color: Colors.red,
              child: Row(
                children: <Widget>[
                  fctBox(Colors.green, 'C'),
                  fctBox(Colors.amber, '/'),
                  fctBox(Colors.pink, 'x'),
                  fctBox(Colors.white, 'Ic'),
              ],
              ),
            ),
            Container(
              height: 92,
              //color: Colors.red,
              child: Row(
                children: <Widget>[
                  fctBox(Colors.red, '7'),
                  fctBox(Colors.purple, '8'),
                  fctBox(Colors.deepOrange, '9'),
                  fctBox(Colors.amberAccent, '-'),
              ],
              ),
            ),
            Container(
              height: 92,
              //color: Colors.red,
              child: Row(
                children: <Widget>[ //green anber pink black
                  fctBox(Colors.green, '4'),
                  fctBox(Colors.amber, '5'),
                  fctBox(Colors.pink, '6'),
                  fctBox(Colors.white, '+'),
              ],
              ),
            ),
            Container(
              height: 92,
              //color: Colors.red,
              child: Row(
                children: <Widget>[
                  fctBox(Colors.red, '1'),
                  fctBox(Colors.purple, '2'),
                  fctBox(Colors.deepOrange, '3'),
                  fctBox(Colors.amberAccent, '='),
              ],
              ),
            ),
            Container(
              height: 92,
              //color: Colors.red,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 50,
                    child: Container(
                      color: Colors.amber,
                      ),
                  ),
                  fctBox(Colors.pink, '.'),
                  fctBox(Colors.amberAccent, '='),
              ],
              ),
            ),
          ],
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

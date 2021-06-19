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

TextEditingController _nameController = TextEditingController();
Widget myWidget() {
  fctBox(Color couleur, String symbol){
    return Expanded(
      flex: 25,
      child: InkWell(
        onTap: (){
          print("Container clicked");
         _nameController.text += symbol; 
        },
        child: Container(
          height: 92,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              symbol,
              style: TextStyle(fontSize: 42),
            ),
          ),
          color: couleur,
        ),
      )
    );
  }
  

  
  // TextField(
  //   controller: _nameController,
  // );
  return Column(
    children: <Widget>[
      Container(
        child: TextField(
          controller: _nameController,
          decoration: InputDecoration.collapsed(hintText: 'jwana'),
          style: TextStyle(fontSize: 40),
          
        ),
        padding: EdgeInsets.fromLTRB(20, 100, 20, 100),
        //margin: EdgeInsets.all(2),
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
                children: <Widget>[ 
                  fctBox(Colors.green, '4'),
                  Expanded(
                    flex: 25,
                    child: InkWell(
                      onTap: (){
                        print("Container clicked");
                        _nameController.text += "5"; 
                      },
                      onLongPress: (){
                        print("Long pressed on number 5, lets take you to your contacts");
                      },
                      child: Container(
                        height: 92,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '5',
                            style: TextStyle(fontSize: 42),
                          ),
                        ),
                        color: Colors.amber,
                      ),
                    )
                  ),
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
                  fctBox(Colors.amberAccent, '()'),
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
                    child: InkWell(
                      onTap: (){
                        print("Big container clicked");
                        _nameController.text += "0"; 
                      },
                      child: Container(
                        height: 92,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '0',
                            style: TextStyle(fontSize: 42),
                          ),
                        ),
                        color: Colors.amber,
                      ),
                    )
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

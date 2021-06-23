import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatelessWidget{
  


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
          body: myWidget(context)
          ),
        ),
    );
  }
}
String toto = 'toto';
TextEditingController _nameController = TextEditingController();
Widget myWidget(BuildContext context) {
  fctBox(Color couleur, String symbol){
    return Expanded(
      flex: 25,
      child: InkWell(
        onTap: (){
          print("Container clicked");
         _nameController.text += symbol; 
         //toto[0]='';
         //print(toto.length);
        },
        child: Container(
          height: 92,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              symbol,
              style: TextStyle(
                              fontSize: 42,
                              color: couleur,
                              ),
            ),
          ),
          
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: HexColor("#f0ebeb")) 
            ),
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
          showCursor: true,
          readOnly: true,
          autofocus: true,
          textAlign: TextAlign.end,
          //autofocus: true,
          controller: _nameController,
          //decoration: InputDecoration.collapsed(hintText: 'jwana'),
          style: TextStyle(fontSize: 40),
          
        ),
        padding: EdgeInsets.fromLTRB(20, 100, 20, 100),
        //margin: EdgeInsets.all(2),
        color: HexColor("#f5f7fc"),
      ),
      Container(
        width: double.infinity,
        height: 462,
        decoration: BoxDecoration(
            color: Colors.blue[200],
            border: Border.all(color: HexColor("#f0ebeb")) 
            ),
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[
            Container(
              height: 92,
              //color: Colors.red,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 25,
                    child: InkWell(
                      onTap: (){
                        print("Container clicked");
                      _nameController.text = ''; 
                      //print(toto[0]);
                      },
                      child: Container(
                        height: 92,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'C',
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.red,
                              ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: HexColor("#f0ebeb")) 
                          ),
                      ),
                    )
                  ),
                  fctBox(Colors.blue, '/'),
                  fctBox(Colors.blue, 'x'),
                  Expanded(
                    flex: 25,
                    child: InkWell(
                      onTap: (){
                        print("Container clicked");
                      _nameController.text = _nameController.text.substring(0, _nameController.text.length-1); 
                      },
                      child: Container(
                        height: 92,
                        child: Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.backspace_outlined,
                            color: Colors.blue,
                            size: 35,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: HexColor("#f0ebeb")) 
                          ),
                      ),
                    )
                  ),
              ],
              ),
            ),
            Container(
              height: 92,
              //color: Colors.red,
              child: Row(
                children: <Widget>[
                  fctBox(HexColor("#525252"), '7'),
                  fctBox(HexColor("#525252"), '8'),
                  fctBox(HexColor("#525252"), '9'),
                  fctBox(Colors.blue, '-'),
              ],
              ),
            ),
            Container(
              height: 92,
              //color: Colors.red,
              child: Row(
                children: <Widget>[ 
                  fctBox(HexColor("#525252"), '4'),
                  Expanded(
                    flex: 25,
                    child: InkWell(
                      onTap: (){
                        print("Container clicked");
                        _nameController.text += "5"; 
                      },
                      onLongPress: (){
                        Navigator.pushNamed(context, '/previous');
                        print("Long pressed on number 5, lets take you to your contacts");
                      },
                      child: Container(
                        height: 92,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '5',
                            style: TextStyle(
                              color: HexColor("#525252"),
                              fontSize: 42
                              ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: HexColor("#f0ebeb")) 
                          ),
                      ),
                    )
                  ),
                  fctBox(HexColor("#525252"), '6'),
                  fctBox(Colors.blue, '+'),
              ],
              ),
            ),
            Container(
              height: 92,
              //color: Colors.red,
              child: Row(
                children: <Widget>[
                  fctBox(HexColor("#525252"), '1'),
                  fctBox(HexColor("#525252"), '2'),
                  fctBox(HexColor("#525252"), '3'),
                  fctBox(Colors.blue, '( )'),
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
                            style: TextStyle(
                              color: HexColor("#525252"),
                              fontSize: 42
                              ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: HexColor("#f0ebeb")) 
                          ),
                      ),
                    )
                  ),
                  fctBox(HexColor("#525252"), '.'),
                  Expanded(
                    flex: 25,
                    child: InkWell(
                      onTap: (){
                        print("Container clicked");
                      _nameController.text += '='; 
                      //toto[0]='';
                      //print(toto.length);
                      },
                      child: Container(
                        height: 92,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '=',
                            style: TextStyle(
                                            fontSize: 50,
                                            color: Colors.white,
                                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(color: HexColor("#f0ebeb")) 
                          ),
                      ),
                    )
                  ),
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


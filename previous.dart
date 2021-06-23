import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Previous(),
  ));
}
class Previous extends StatefulWidget {
  //const Previous({ Key? key }) : super(key: key);

  @override
  _PreviousState createState() => _PreviousState();
}

class _PreviousState extends State<Previous> {

  String name = 'Trissian';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID card'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
                      name+='m';
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[500],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/co.jpg'),
                radius: 50,
              ),
            ),
            Divider(
              height: 50,
              color: Colors.grey,
            ),
            Text(
              'Last Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              )
            ),
            SizedBox(height: 10),
            Text(
              '$name',
              style: TextStyle(
                color: Colors.yellow[500],
                letterSpacing: 2,
                fontSize: 25,
                fontWeight: FontWeight.bold
              )
            ),
            SizedBox(height: 30,),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              )
            ),
            SizedBox(height: 10),
            Text(
              'Abdellah',
              style: TextStyle(
                color: Colors.yellow[500],
                letterSpacing: 2,
                fontSize: 25,
                fontWeight: FontWeight.bold
              )
            ),
            SizedBox(height: 30,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10),
                Text(
                  'Abdellah.Trissian@mirikan.com',
                  style: TextStyle(
                    color: Colors.yellow[500],
                    letterSpacing: 1.5,
                    fontSize: 17,
                    fontWeight: FontWeight.bold
                  )
                ),
              ],
            ),
            SizedBox(height: 30,),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              )
            ),
            SizedBox(height: 10),
            Text(
              'Abdellah',
              style: TextStyle(
                color: Colors.yellow[500],
                letterSpacing: 2,
                fontSize: 25,
                fontWeight: FontWeight.bold
              )
            ),
          ],
          )
          ),
    );
  }
}

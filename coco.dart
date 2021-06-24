import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(Coco());
}


class Coco extends StatefulWidget {
  //const MyApp({ Key? key }) : super(key: key);

  @override
  _CocoState createState() => _CocoState();
}

class _CocoState extends State<Coco> {

  final List<String> _searchable = [
    'fransa',
    'taha',
    'lcobra',
    'Trissian',
    'Abdellah',
    'fransa',
    'taha',
    'lcobra',
    'Trissian',
    'Abdellah',
  ];


  var items = [];


  @override
  void initState() { 
    super.initState();
    items.addAll(_searchable);
  }




  @override
  Widget build(BuildContext context) {
    final title = items.length.toString() + ' Contacts';




    return Scaffold(
        appBar: AppBar(
          //
          backgroundColor: Colors.blue[800],
          actions: <Widget>[
            IconButton(icon: Icon(Icons.verified_user, color: Colors.white), onPressed: null)
          ],
          title: Text(title, style: GoogleFonts.roboto(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600
            )
          ),),
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.all(5),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25))
                  ),
                  prefix: Icon(Icons.search),
                  labelText: 'Search'
                ),
                onChanged: (value){
                  filterContact(value.toLowerCase());
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index){
                  return Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      margin: EdgeInsets.all(9),
                      padding: EdgeInsets.all(6),
                      child: Row(
                        children: [
                          CircleAvatar(
                            child: Text('${items[index][0]}'),
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                          ),
                          Padding(padding: EdgeInsets.all(8)),
                          Text(
                            '${items[index]}',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  );
                },
                )
              )
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: null,
        child: Icon(Icons.people),
        backgroundColor: Colors.green[800],
        foregroundColor: Colors.white,
        ),
    );
  }

  void filterContact(String searchTerm){
    List<String> tmpSearchList = [];

    tmpSearchList.addAll(_searchable);

    if(searchTerm.isNotEmpty){
      List<String> tmpList = [];
      tmpSearchList.forEach((element) {
        if(element.toLowerCase().contains(searchTerm.trim())){
          tmpList.add(element);
        }
      });

      setState(() {
            items.clear();
            items.addAll(tmpList);  
            });
      return;


    }

    else{
      setState(() {
            items.clear();
            items.addAll(_searchable);  
            });
    }
  }

}

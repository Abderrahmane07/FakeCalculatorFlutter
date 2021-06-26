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

  final _searchable = [
    {'name':'Papi', 'number': '21266****948'},
    {'name':'Dandy', 'number': '3366*****77'},
    {'name':'Mami', 'number': '21266****391'},
    {'name':'Souhaila', 'number': '2126****335'},
    {'name':'Stitouu', 'number': '21266****648'},
    {'name':'Ana', 'number': '21264*****38'},
    {'name':'Selama', 'number': '212*****22'},
    {'name':'lcobra', 'number': '0661******8'},
    {'name':'Trissian', 'number': '06*****48'},
    {'name':'Abdellah', 'number': '066******48'},
    {'name':'Mountassir', 'number': '33******1974'},
    {'name':'Dandy', 'number': '336*****077'},
    {'name':'Mami', 'number': '2126*****91'},
    {'name':'Souhaila', 'number': '212******9335'},
    {'name':'Stitouu', 'number': '21********648'},
    {'name':'Ana', 'number': '2126*****38'},
    {'name':'Selama', 'number': '212******722'}
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
                    borderRadius: BorderRadius.all(Radius.circular(5))
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
                    child: GestureDetector(
                      child: Container(
                        margin: EdgeInsets.all(9),
                        padding: EdgeInsets.all(6),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              child: Text('${(items[index]['name'][0]).toUpperCase()}', style: TextStyle(fontSize: 25)),
                              backgroundColor: Colors.green,
                              foregroundColor: Colors.white,
                            ),
                            Padding(padding: EdgeInsets.all(8)),
                            Text(
                              '${items[index]['name']}',
                              style: TextStyle(fontSize: 20),
                            ),
                            //SizedBox(width: 60,),
                            Spacer(),
                            Text(
                              '${items[index]['number']}',
                              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                            )
                          ],
                        ),
                      ),
                      onLongPress: (){
                        print('You are going to copy this persons number: ${items[index]['name']}');
                        Navigator.pushNamed(context, '/', arguments: {'phone':items[index]['number']});
                      },
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
    var tmpSearchList = [];

    tmpSearchList.addAll(_searchable);

    if(searchTerm.isNotEmpty){
      List<Map<String, dynamic>> tmpList = [];
      tmpSearchList.forEach((element) {
        if(element['name'].toLowerCase().contains(searchTerm.trim())){
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

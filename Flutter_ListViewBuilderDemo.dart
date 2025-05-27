import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
   List<String> items = List<String>.generate(100,(index)=>"Item $index");
   ListView listView = ListView.builder(itemCount:items.length,itemBuilder:(context,index){

     ListTile listTile = ListTile(title:Text(items[index]));
     return listTile;

   });

   AppBar appBar = AppBar(title:Text("ListView using builder()"),backgroundColor:Colors.indigoAccent ,);
   Scaffold scaffold = Scaffold(appBar:appBar,body:listView,);
   MaterialApp materialApp = MaterialApp(home:scaffold,debugShowCheckedModeBanner: false);

    return materialApp;
  }
}

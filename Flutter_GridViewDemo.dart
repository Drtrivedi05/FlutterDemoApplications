import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAPPState();
}

class _MyAPPState extends State<MyApp>
{
  @override
  Widget build(BuildContext context)
  {
    //Step-1
    SliverGridDelegateWithFixedCrossAxisCount gridDelegate = SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing:15,crossAxisSpacing:15 );

    //Step-2
    List<ListTile> tiles = <ListTile>[

      ListTile(title:Text("Account"),leading:Icon(Icons.note_add,size:60)),
      ListTile(title:Text("Send money"),leading:Icon(Icons.send,size:60)),
      ListTile(title:Text("Transaction"),leading:Icon(Icons.list_alt,size:60)),
      ListTile(title:Text("Profile"),leading:Icon(Icons.account_circle,size:60)),
      ListTile(title:Text("Need Help?"),leading:Icon(Icons.support_agent_outlined,size:60)),

    ];

    //Step-3
    GridView gridView = GridView.builder(itemCount:5,gridDelegate:gridDelegate,itemBuilder:(context,index)
     {

       return tiles[index];

     } ,);



    Center center = Center(child:gridView);

    AppBar appBar = AppBar(title:Text("GridView Demo"),backgroundColor:Colors.tealAccent );
    Scaffold scaffold = Scaffold(appBar:appBar,body:center);
    MaterialApp materialApp = MaterialApp(home: scaffold,debugShowCheckedModeBanner: false,);
    return materialApp;

  }
}

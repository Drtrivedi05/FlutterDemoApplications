import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    Icon icon = Icon(Icons.account_circle,size:40);
    Text email = Text("24mca000@charusat.edu.in");
    Column column = Column(mainAxisAlignment: MainAxisAlignment.center, children: [icon,email]);
    DrawerHeader drawerHeader = DrawerHeader(child:column);

    ListTile l1 = ListTile(title:Text("Attendance"),leading:Icon(Icons.fingerprint));
    ListTile l2 = ListTile(title:Text("Schedule"),leading:Icon(Icons.calendar_month));
    ListTile l3 = ListTile(title:Text("Results"),leading:Icon(Icons.note_add_rounded));

    Divider divider = Divider();

    ListTile l4 = ListTile(title:Text("Close app"),leading:IconButton(onPressed:(){ exit(0); } , icon:Icon(Icons.exit_to_app)));

    ListView listView = ListView(children: [drawerHeader,l1,l2,l3,divider,l4]);

    Drawer drawer = Drawer(child:listView);

    AppBar appBar = AppBar(title:Text("Drawer Demo"),backgroundColor:Colors.teal,);

    Scaffold scaffold = Scaffold(endDrawer:drawer,appBar: appBar);

    MaterialApp materialApp = MaterialApp(home:scaffold,debugShowCheckedModeBanner:false);

    return materialApp;

  }
}

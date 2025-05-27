import 'package:flutter/material.dart';
import 'tab1.dart';
import 'tab2.dart';
import 'tab3.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    Tab tab1 = Tab(text:"Trains",icon:Icon(Icons.train_outlined));
    Tab tab2 = Tab(text:"Flights",icon:Icon(Icons.flight_sharp));
    Tab tab3= Tab(text:"Buses",icon:Icon(Icons.bus_alert));

    TabBar tabBar = TabBar(tabs:[tab1,tab2,tab3]);

    AppBar appBar = AppBar(title:Text("Tab Demo"),bottom:tabBar);

    TabBarView tabBarView = TabBarView(children:[Trains(),Flights(),Buses()]);

    Scaffold scaffold = Scaffold(appBar:appBar,body:tabBarView);

    DefaultTabController defaultTabController = DefaultTabController(length: 3, child:scaffold );

    MaterialApp materialApp = MaterialApp(home:defaultTabController,debugShowCheckedModeBanner:false ,);

    return materialApp;
  }
}


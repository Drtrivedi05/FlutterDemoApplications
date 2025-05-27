import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{

  double v = 12;
  @override
  Widget build(BuildContext context)
  {

    Slider slider = Slider(label:"$v",min:0,max:20,divisions:10,value: v, onChanged: (value){

      setState(() {
        v = value;
      });
    });

    Center center = Center(child:slider);
    AppBar appBar = AppBar(title: const Text("Slider Demo"),backgroundColor:Colors.limeAccent ,);
    Scaffold s = Scaffold(appBar:appBar,body:center);
    MaterialApp m = MaterialApp(home:s,debugShowCheckedModeBanner: false,);
    return m;

  }
}

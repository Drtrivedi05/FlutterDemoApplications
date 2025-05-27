import 'package:flutter/material.dart';

void main()
{
  runApp(const MyApp()); // runApp() takes a MaterialApp object as argument.
}

// This widget is the root of your application.
class MyApp extends StatelessWidget
{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context)
  {
    Text t = const Text('Hello World...');
    Container c = Container(alignment: Alignment.center,child: t );
    AppBar ab = AppBar(title:const Text("HelloWorld App"));
    Scaffold s = Scaffold(appBar:ab,body:c);
    MaterialApp m = MaterialApp(home: s,debugShowCheckedModeBanner: false,); // MaterialAPP() takes a Scaffold object as argument.
    return m;
  }
}
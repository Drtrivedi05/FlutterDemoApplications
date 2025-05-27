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
   int a=3;
   int b=1;

  @override
  Widget build(BuildContext context)
  {
    Badge badge1 = Badge(label:Text("$a"),child:Icon(Icons.call_missed_outlined,size:48));
    Badge badge2 = Badge.count(count:b,child:Icon(Icons.message,size:48));

    ElevatedButton button1 = ElevatedButton(onPressed:(){
      setState(() {
        a++;
      });
    } , child:Text("Give a missed call.."));

    ElevatedButton button2 = ElevatedButton(onPressed:(){
      setState(() {
        b++;
      });
    } , child:Text("Send a message.."));

    Row row1 = Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [badge1,badge2]);
    Row row2 = Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [button1,button2]);
    SizedBox sizedBox = SizedBox(height:100);

    Column column = Column(mainAxisAlignment:MainAxisAlignment.center,children: [row1,sizedBox,row2]);

    AppBar appBar = AppBar(title:Text("Badge Demo"),backgroundColor:Colors.tealAccent );
    Scaffold scaffold = Scaffold(appBar:appBar,body:column);
    MaterialApp materialApp = MaterialApp(home: scaffold,debugShowCheckedModeBanner: false,);
    return materialApp;

  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{

  String skill=""; // Will be used to store the currently selected value from the group.

  @override
  Widget build(BuildContext context)
  {
    // ERROR: onChanged:(bool), CORRECTION: onChanged: (value)
      RadioListTile r1 =RadioListTile(title:Text("Flutter"),value:"Flutter",groupValue: skill, onChanged:(value){
        setState(() {
          print("r1 is selected");
          skill=value;

        });
      });
      RadioListTile r2 =RadioListTile(title:Text("Java"),value: "Java", groupValue: skill, onChanged: (value){
        setState(() {
          print("r2 is selected");
          skill=value;

        });
      });
      RadioListTile r3 =RadioListTile(title:Text(".NET"),value: ".NET", groupValue: skill, onChanged: (value){
        setState(() {
          print("r3 is selected");
          skill=value;

        });
      });
      AppBar appBar = AppBar(title:Text("RadioListTile Demo.."),backgroundColor:Colors.green);

      SizedBox sb = SizedBox(height:80,width:80);
      Text output = Text(skill);

      Column column = Column(mainAxisAlignment:MainAxisAlignment.center, children: [r1,r2,r3,sb,output]);

      Container container = Container(child:column);

      Scaffold scaffold = Scaffold(appBar:appBar,body:container);

      MaterialApp materialApp = MaterialApp(home:scaffold,debugShowCheckedModeBanner:false);

      return materialApp;
  }
}

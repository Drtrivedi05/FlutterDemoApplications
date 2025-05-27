import 'package:flutter/material.dart';

void main() {
  runApp(const Demo()); // Pass instance of StatefulWidget
}

//StatefulWidget class
class Demo extends StatefulWidget
{
  const Demo({super.key});

  @override
  UI createState() => UI();
}

//---------------------------------------------------------------------

//State class
class UI extends State<Demo>
{
  bool answer=false;
  String sub="Notifications are OFF.";

  @override
  Widget build(BuildContext context)
  {
    // Setting string for subtitle...
     sub = (answer==true)? "Notifications are ON." : "Notifications are OFF.";
    SwitchListTile switchListTile = SwitchListTile(title:const Text("Enable notifications?"),subtitle:Text(sub) ,
        value: answer, onChanged:(value) {
      setState(() {
        if(value==true) {
          debugPrint("The switch is ON.");
        }
        else
        {
          debugPrint("The switch is OFF.");
        }
        answer = value;
       },);
    });
    Center cnt = Center(child:switchListTile);
    Scaffold s = Scaffold(appBar: AppBar(title: const Text("SwitchListTile Demo")),body:cnt);
    MaterialApp m = MaterialApp(home:s,debugShowCheckedModeBanner: false,);
    return m;
  }
}
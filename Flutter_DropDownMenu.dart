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


  @override
  Widget build(BuildContext context)
  {
    DropdownMenuEntry option1 = DropdownMenuEntry(value: "Gujarat", label: "Gujarat");
    DropdownMenuEntry option2 = DropdownMenuEntry(value: "Maharashtra", label: "Maharashtra");
    DropdownMenuEntry option3 = DropdownMenuEntry(value: "Rajasthan", label: "Rajasthan");

    List<DropdownMenuEntry> options = <DropdownMenuEntry>[option1,option2,option3];

    DropdownMenu dropdownMenu = DropdownMenu(hintText:"Select a state",dropdownMenuEntries: options,onSelected:(value){
      setState(() {
        debugPrint(value);
      });

    } ,);

    Center center = Center(child:dropdownMenu);
    AppBar appBar = AppBar(title: const Text("DropDownMenu Demo"),backgroundColor:Colors.limeAccent ,);
    Scaffold s = Scaffold(appBar:appBar,body:center);
    MaterialApp m = MaterialApp(home:s,debugShowCheckedModeBanner: false,);
    return m;

  }
}

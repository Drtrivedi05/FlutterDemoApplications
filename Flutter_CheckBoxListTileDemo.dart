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

class _MyAppState extends State<MyApp> {
  bool isChecked1=false;
  bool isChecked2=false;
  bool isChecked3=false;
  String skills="";

  @override
  Widget build(BuildContext context)
  {
      CheckboxListTile c1 =CheckboxListTile(title:Text("Flutter"),value: isChecked1, onChanged:(bool? value){

        setState(() {

          //skills = isChecked1 ? "$skills Flutter" :  skills = skills.replaceAll("Flutter","");

          if(value==true)
            {
              skills = "$skills Flutter";
            }
          else
            {
              skills = skills.replaceAll("Flutter","");
            }

          isChecked1=value!;

        });
        } );

      CheckboxListTile c2 =CheckboxListTile(title:Text("Java"),value: isChecked2, onChanged: (bool? value){
        setState(() {
         // skills = isChecked2 ? "$skills Java" :  skills = skills.replaceAll("Java","");
          if(value==true)
          {
            skills = "$skills Java";
          }
          else
          {
            skills = skills.replaceAll("Java","");
          }
          isChecked2=value!;
        });
      });
      CheckboxListTile c3 =CheckboxListTile(title:Text(".NET"),value: isChecked3, onChanged: (bool? value){

        setState(() {
          //skills = isChecked3 ? "$skills .NET" :  skills = skills.replaceAll(".NET","");
          if(value==true)
          {
            skills = "$skills .NET";
          }
          else
          {
            skills = skills.replaceAll(".NET","");
          }
          isChecked3=value!;
        });
      });

      AppBar appBar = AppBar(title:Text("CheckboxListTile Demo.."),backgroundColor:Colors.amber);

      SizedBox sb = SizedBox(height:80,width:80);
      Text output = Text(skills);

      Column column = Column(mainAxisAlignment:MainAxisAlignment.center, children: [c1,c2,c3,sb,output]);

      Container container = Container(child:column);

      Scaffold scaffold = Scaffold(appBar:appBar,body:container);

      MaterialApp materialApp = MaterialApp(home:scaffold,debugShowCheckedModeBanner:false);

    return materialApp;
  }
}

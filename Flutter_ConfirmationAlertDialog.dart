import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)
  {
      MaterialApp materialApp = MaterialApp(home:Demo(),debugShowCheckedModeBanner:false);
      return materialApp;
  }
}

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context)
  {
    AppBar appBar = AppBar(title:const Text("AlertDialog demo"),backgroundColor:Colors.red);
    ElevatedButton btn = ElevatedButton(onPressed:(){
      createAndShowDialog(context);
      debugPrint("Btn is pressed");

    }, child:Text("Show AlertDialog"));
    Center center = Center(child:btn);
    Scaffold scaffold = Scaffold(appBar:appBar,body: center,);
    return scaffold;
  }

  //Step-1
void createAndShowDialog(BuildContext context)
{
  //Step-2 Create button for actions.

  ElevatedButton yesBtn = ElevatedButton(onPressed:(){

    debugPrint("Yes selected...");
    Navigator.pop(context); } , child: Text("Yes"));

  ElevatedButton noBtn = ElevatedButton(onPressed:(){

    debugPrint("No selected...");
    Navigator.pop(context); } , child: Text("No"));



  //Step-3 Create AlertDialog
  AlertDialog alertDialog = AlertDialog(title:Text("Confirmation"),content:Text("Do you really want to delete your profile?"),actions: [yesBtn,noBtn], );

  //Step-4
  showDialog(context: context, builder: (context){

    return alertDialog;

  });


}

}



import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    AppBar appBar = AppBar(title:Text("Using images.."),backgroundColor:Colors.pink);
    Image image1 = Image.asset("/images/i1.gif");
    Image image2 = Image.asset("/images/i2.png");
    Image image3 = Image.network("https://images.pexels.com/photos/3782463/pexels-photo-3782463.jpeg",scale:10);
    Column column = Column(mainAxisAlignment: MainAxisAlignment.center, children: [image1,image2,image3]);
    Container container = Container(alignment:Alignment.center,child:column,);
    Scaffold scaffold = Scaffold(appBar:appBar,body: container);
    MaterialApp materialApp = MaterialApp(home:scaffold,debugShowCheckedModeBanner:false);

    return materialApp;
  }
}

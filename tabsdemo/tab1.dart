import 'package:flutter/material.dart';

class Trains extends StatelessWidget {
  const Trains({super.key});

  @override
  Widget build(BuildContext context)
  {
    Text t = Text("Trains");
    Container container = Container(alignment:Alignment.center,color:Colors.blueAccent, child:t);
    return container;
  }
}


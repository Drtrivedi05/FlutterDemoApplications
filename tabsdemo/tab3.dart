import 'package:flutter/material.dart';

class Buses extends StatelessWidget {
  const Buses({super.key});

  @override
  Widget build(BuildContext context)
  {
    Text t = Text("Buses");
    Container container = Container(alignment:Alignment.center,color:Colors.green, child:t);
    return container;
  }
}

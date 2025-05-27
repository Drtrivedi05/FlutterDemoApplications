import 'package:flutter/material.dart';

class Flights extends StatelessWidget {
  const Flights({super.key});

  @override
  Widget build(BuildContext context)
  {
    Text t = Text("Flights");
    Container container = Container(alignment:Alignment.center,color:Colors.cyan, child:t);
    return container;
  }
}

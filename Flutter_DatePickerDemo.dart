import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MaterialApp(home:MyApp(),debugShowCheckedModeBanner: false,));
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAPPState();
}

class _MyAPPState extends State<MyApp>
{
  DateTime? selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context)
  {
    IconButton btn = IconButton(onPressed:() { _selectDate(context);  },
     icon:Icon( Icons.calendar_month));

    SizedBox sizedBox = SizedBox(height:80);

    String formattedDate = DateFormat('dd/MM/yyyy').format(selectedDate!);

    Text message = Text("Appointment booked for $formattedDate",textScaler: TextScaler.linear(2),);

    Column column = Column(mainAxisAlignment:MainAxisAlignment.center,children: [btn,sizedBox,message]);

    Center center = Center(child:column);

    AppBar appBar = AppBar(title:Text("DatePicker Demo"),backgroundColor:Colors.tealAccent );
    Scaffold scaffold = Scaffold(appBar:appBar,body:center);
    return scaffold;

  }

Future<void> _selectDate(BuildContext context) async
{

  final DateTime? picked = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2025,2,15),
    lastDate: DateTime(2025,4,30),
    helpText: "Select date of appointment",
    confirmText: "Book my appointment",
    cancelText: "I will do it later",
    barrierDismissible: false
  );

  if (picked != null && picked != selectedDate) {
    setState(() {
      selectedDate = picked;
    });
  }
}

}

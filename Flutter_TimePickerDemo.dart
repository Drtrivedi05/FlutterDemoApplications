import 'package:flutter/material.dart';


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
  TimeOfDay selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context)
  {
    IconButton calendarIcon = IconButton(onPressed:() { _selectTime(context);  },
     icon:Icon( Icons.watch_later));

    SizedBox sizedBox = SizedBox(height:40);

    String time = selectedTime.format(context);

    Text message = Text("Appointment booked for $time");

    Column column = Column(mainAxisAlignment:MainAxisAlignment.center,children: [calendarIcon,sizedBox,message]);

    Center center = Center(child:column);

    AppBar appBar = AppBar(title:Text("TimePicker Demo"),backgroundColor:Colors.tealAccent );
    Scaffold scaffold = Scaffold(appBar:appBar,body:center);
    return scaffold;

  }

Future<void> _selectTime(BuildContext context) async
{

  final TimeOfDay? picked = await showTimePicker(
    context: context,
    initialTime: TimeOfDay.now(),
    helpText: "Select time of appointment",
    confirmText: "Book my appointment",
    cancelText: "I will do it later",
    barrierDismissible: false
  );

  if (picked != null && picked != selectedTime) {
    setState(() {
      selectedTime = picked;
    });
  }
}

}

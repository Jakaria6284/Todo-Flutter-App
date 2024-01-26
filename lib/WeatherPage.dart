import 'package:flutter/material.dart';
import 'package:weather/Util/todoTile.dart';
class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: AppBar(
         backgroundColor: Colors.amber,
         title: Center(child: Text('To-Do List',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
       ),
      body: ListView(
        children: [
          todoTile(
            taskName: "make tutorial",
            taskCompleted: true,
            onChanged: (p0){},
          ),
          todoTile(
            taskName: "make tutorial",
            taskCompleted: false,
            onChanged: (p0){},
          ),
        ],
      )

    );
  }
}

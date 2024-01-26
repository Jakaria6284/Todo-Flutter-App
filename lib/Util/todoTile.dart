import 'package:flutter/material.dart';
class todoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;

  Function(bool?)?onChanged;
   todoTile({super.key,
     required this.taskName,
     required this.taskCompleted,
     required this.onChanged,


   });



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: EdgeInsets.all(25),
        child:Row(children: [
          Text(taskName,style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18)),
          Checkbox(value: taskCompleted, onChanged: onChanged)

        
        
        ]),
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(12)
        ),
      ),
    );
  }
}

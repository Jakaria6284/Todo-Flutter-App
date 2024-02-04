import 'dart:js';

import 'package:flutter/material.dart';
import 'package:weather/Util/todoTile.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  List<List<dynamic>> toDoList = [
    ["make tutorial", false],
    ["Do Exercise", false]
  ];

  void checkBoxChange(bool? value, int index) {
    setState(() {
      if (value != null) {
        toDoList[index][1] = !toDoList[index][1];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Center(
          child: Text(
            'To-Do List',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),

      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.place_outlined),
        onPressed: ()
        {
          createNewTask(context);
        },
      ),

      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value) => checkBoxChange(value, index),
          );
        },
      ),

    );
  }


  void createNewTask(BuildContext context) {
    TextEditingController taskController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add New Task'),
          content: TextField(
            controller: taskController,
            decoration: InputDecoration(hintText: 'Enter task name'),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                String newTask = taskController.text.trim();
                if (newTask.isNotEmpty) {
                  // Add the new task to your task list
                  setState(() {
                    toDoList.add([newTask, false]);
                  });
                }
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }


}

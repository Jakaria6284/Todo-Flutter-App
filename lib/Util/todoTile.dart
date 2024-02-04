import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  final ValueChanged<bool?> ?onChanged;

  TodoTile({
    Key? key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: EdgeInsets.all(25),
        child: Row(
          children: [
            Text(
              taskName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                decoration: taskCompleted ? TextDecoration.lineThrough : null,
              ),
            ),
            Checkbox(
              value: taskCompleted,
              onChanged: onChanged,
            )
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
//class variables
  final String taskName;
  final bool taskCompleted;
//class methods
  // ignore: avoid_types_as_parameter_names
  void onChanged(bool) {
  }
//constructor
  const ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: const Color.fromRGBO(126, 87, 194, 1)),
          borderRadius: BorderRadius.circular(10), 
        ),
        child: 
            CheckboxListTile(
              value: taskCompleted, 
              onChanged: onChanged, 
              activeColor: Colors.white70, 
              hoverColor: Colors.grey, 
              checkColor: Colors.green,
              tileColor: Colors.deepPurple[100],
              title: Text(taskName[0]),
              contentPadding: const EdgeInsets.all(5),),
           
      ),
    );
  }
}
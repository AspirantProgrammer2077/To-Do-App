// ignore_for_file: sized_box_for_whitespace, strict_top_level_inference, prefer_typing_uninitialized_variables, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_app/utilities/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller; 
  VoidCallback onSave;
  VoidCallback onCancel;

 DialogBox({
    super.key, 
    required this.controller, 
    required this.onSave, 
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          // Get user input
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Add a new task',
            ),
          ),

          // Buttons -> Save and Cancel
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            // Save button
            MyButton(text: 'Save', onPressed: onSave),

            const SizedBox(width: 4),

            // Cancel button
            MyButton(text: 'Cancel', onPressed: onCancel),
          ],)
        ],)
      ),
    );
  }
}
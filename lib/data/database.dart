// ignore_for_file: unused_field

import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  

  List toDoList = [];

  // Reference our box
  final _myBox = Hive.box('mybox');


  // Run this method if this is the first time ever opening this app
  void createInitialData() {
    toDoList = [
      ['Play Basketball', false],
      ['Play Chess', false],
      ['Do Homework', false],
    ];
  }


  // Load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // Update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
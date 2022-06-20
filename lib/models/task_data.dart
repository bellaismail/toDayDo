

import 'package:flutter/material.dart';
import 'package:to_do_tasks/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> taskList = [
    Task(taskName: "go shopping"),
    Task(taskName: "play football"),
    Task(taskName: "repair car"),
    Task(taskName: "fast write"),
  ];

  void updateTaskFun(Task task){
    task.doneChangeFun();
    notifyListeners();
  }

  void addTaskFun(String taskName){
    taskList.add(Task(taskName: taskName));
    notifyListeners();
  }

  removeTask(Task task){
    taskList.remove(task);
    notifyListeners();
  }

  removeTask2(int index){
    taskList.removeAt(index);
    notifyListeners();
  }

}
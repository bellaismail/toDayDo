import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:to_do_tasks/models/task_data.dart';

import 'list_tile_widget.dart';

class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
          itemBuilder: (context, index) {
            return ListTileTask(
              taskText: taskData.taskList[index].taskName,
              checkBox: taskData.taskList[index].isDone,
              onChangeFun: (val){
                taskData.updateTaskFun(taskData.taskList[index]);
              },
              onLongPressed: (){
                taskData.removeTask2(index);
                  toast();
                // taskData.removeTask(taskData.taskList[index]);
              },
            );
          },
          itemCount: Provider.of<TaskData>(context).taskList.length,
        );
      },
    );
  }
}

void toast() => Fluttertoast.showToast(
  msg: "one item deleted",
    toastLength: Toast.LENGTH_SHORT,
    backgroundColor: Colors.grey.shade500,
    textColor: Colors.white,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 2,
    fontSize: 18,
);
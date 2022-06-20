import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_tasks/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  // AddTaskScreen(this.onPressedFun);
  // final Function onPressedFun;
  @override
  Widget build(BuildContext context) {
    String? onChange;
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.indigo[400],
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            onChanged: (val){
              onChange = val;
            },
            autofocus: true,
            textAlign: TextAlign.left,
            cursorColor: Colors.grey,
            cursorHeight: 25,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
            ),
            decoration: const InputDecoration(
              hintText: "set task....",
              hintStyle: TextStyle(
                fontWeight: FontWeight.w300,
              )
            ),
          ),
          const SizedBox(height: 30.0,),
          Consumer<TaskData>(
            builder: (context, taskData, child){
              return Container(
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.teal[400]),
                  ),
                  onPressed: (){
                    // onPressedFun(onChange);
                    taskData.addTaskFun(onChange!);
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Save",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

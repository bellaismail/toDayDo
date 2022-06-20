import 'package:flutter/material.dart';

class ListTileTask extends StatelessWidget {
  ListTileTask({
    required this.taskText,
    required this.checkBox,
    required this.onChangeFun,
    required this.onLongPressed,
  });

  final bool checkBox;
  final String taskText;
  final Function(bool?) onChangeFun;
  final Function() onLongPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskText,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w300,
          decoration: checkBox ? TextDecoration.lineThrough : null,
        ),
      ),
      onLongPress: onLongPressed,
      trailing: Checkbox(
        onChanged: onChangeFun,
        value: checkBox,
        fillColor: MaterialStateProperty.all(Colors.indigo),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_tasks/models/task_data.dart';
import 'package:to_do_tasks/screens/screen_task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TaskScreen(),
      ),
    );
  }
}

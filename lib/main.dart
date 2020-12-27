import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_flutter/models/mytask_data.dart';
import 'package:sample_flutter/screens/task_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      //instead of build  change it to create
      create: (context) => MyTaskData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );

  }
}


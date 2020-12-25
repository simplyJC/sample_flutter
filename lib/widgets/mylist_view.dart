import 'package:flutter/material.dart';
import 'package:sample_flutter/widgets/mylist_tile.dart';
import 'package:sample_flutter/models/my_task.dart';

class MyListView extends StatefulWidget {
  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  List<MyTask> myTask = [
    MyTask(mynametask: 'Buy milk'),
    MyTask(mynametask: 'Buy egg'),
    MyTask(mynametask: 'Buy bread'),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return MyListTile(
        myTaskTitle: myTask[index].mynametask,
        isCheck: myTask[index].myIsDone,
      );
    },
      itemCount: myTask.length,
    );
  }
}
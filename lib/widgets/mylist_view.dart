import 'package:flutter/material.dart';
import 'package:sample_flutter/widgets/mylist_tile.dart';
import 'package:sample_flutter/models/my_task.dart';

class MyListView extends StatefulWidget {
  final List <MyTask> myTask;
  MyListView (this.myTask);
  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return MyListTile(
        myTaskTitle: widget.myTask[index].mynametask,
        isCheck: widget.myTask[index].myIsDone,
        myCheckCallback:  (checkboxState){
          setState(() {
            widget.myTask[index].toggleDone();
          });

        },
      );
    },
      itemCount: widget.myTask.length,
    );
  }
}
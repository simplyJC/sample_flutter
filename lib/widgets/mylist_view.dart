import 'package:flutter/material.dart';
import 'package:sample_flutter/models/mytask_data.dart';
import 'package:sample_flutter/widgets/mylist_tile.dart';
import 'package:sample_flutter/models/my_task.dart';
import 'package:provider/provider.dart';

class MyListView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return MyListTile(
        myTaskTitle: Provider.of<MyTaskData>(context).myTask[index].mynametask,
        isCheck: Provider.of<MyTaskData> (context).myTask[index].myIsDone,
        myCheckCallback:  (checkboxState){
          // setState(() {
          //   widget.myTask[index].toggleDone();
          // });

        },
      );
    },
      itemCount: Provider.of<MyTaskData>(context).myTask.length,
    );
  }
}
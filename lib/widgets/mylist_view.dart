import 'package:flutter/material.dart';
import 'package:sample_flutter/models/mytask_data.dart';
import 'package:sample_flutter/widgets/mylist_tile.dart';
import 'package:provider/provider.dart';

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MyTaskData>(
      builder: (context, myTaskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final newTask = myTaskData.getterMyTask[index];

            return MyListTile(
              myTaskTitle: newTask.mynametask,
              isCheck: newTask.myIsDone,
              myCheckCallback: (checkboxState) {
                myTaskData.updateMyTask(newTask);
              },
            );
          },
          itemCount: myTaskData.myTaskCount,
        );
      },
    );
  }
}

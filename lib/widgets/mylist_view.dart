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
            return MyListTile(
              myTaskTitle: myTaskData.getterMyTask[index].mynametask,
              isCheck: myTaskData.getterMyTask[index].myIsDone,
              myCheckCallback: (checkboxState) {
                // setState(() {
                //   widget.myTask[index].toggleDone();
                // });
              },
            );
          },
          itemCount: myTaskData.myTaskCount,
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_flutter/models/mytask_data.dart';


class AddTaskMBottomSheet extends StatefulWidget {

  @override
  _AddTaskMBottomSheetState createState() => _AddTaskMBottomSheetState();
}

class _AddTaskMBottomSheetState extends State<AddTaskMBottomSheet> {
  String newTaskTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add New Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.redAccent,
              ),
            ),

            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTaskTitle = newText;
              },
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.redAccent,
              onPressed: () {
                Provider.of<MyTaskData>(context).addMyTask(newTaskTitle??'');
                Navigator.pop(context);

              },
            ),
          ],
        ),
      ),
    );
  }
}

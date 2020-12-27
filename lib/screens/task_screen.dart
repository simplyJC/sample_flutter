import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_flutter/models/mytask_data.dart';
import 'package:sample_flutter/screens/add_task_mbottomsheet.dart';
import 'package:sample_flutter/widgets/mylist_view.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {
  // Widget myBuilderBottomSheet (BuildContext context) => Container ();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurpleAccent,
        child: Icon(Icons.add),
        onPressed:  () {
          showModalBottomSheet(
              context: context,
              builder: (context) =>
                  AddTaskMBottomSheet ((newTaskTitle){
            // setState(() {
            //   myTask.add(MyTask(mynametask: newTaskTitle));
            // });
            Navigator.pop(context);
          }));
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Container(
            padding: EdgeInsets.only(left: 30.0, top: 30.0, right: 30.0, bottom: 30.0,),
           // color: Colors.deepPurpleAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
             // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'My Todo',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '${Provider.of<MyTaskData>(context).myTaskCount} Tasks',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only (
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                  )
              ),
              child: MyListView() ,
            ),
          ),
          //Expanded widget will take up much space
        ],
      ),

    );
  }
}



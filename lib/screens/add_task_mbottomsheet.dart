import 'package:flutter/material.dart';


class AddTaskMBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color (0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          )
        ),
        child: Column(

          children: <Widget> [

            Text ('Add New Task',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.redAccent,

            )
              ,),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            FlatButton(onPressed: null, child: null)
          ],
        ),
      ),

    );
  }
}

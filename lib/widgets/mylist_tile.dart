
import 'package:flutter/material.dart';
class MyListTile extends StatefulWidget {

  @override
  _MyListTileState createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  bool isCheck = false;
//this is a callback
  void callbackOfCheckbox (bool myCheckboxState) {
      setState(() {
        isCheck = myCheckboxState;
      });
}

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text ('This is my task',
        style:  TextStyle(decoration: isCheck? TextDecoration.lineThrough:null),
      ),
      trailing: MyCheckbox(checkboxState: isCheck, toggleMyCheckboxState: callbackOfCheckbox),
    );
  }
}

class MyCheckbox extends StatelessWidget {
final bool checkboxState;
final Function toggleMyCheckboxState;
MyCheckbox({this.checkboxState, this.toggleMyCheckboxState});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      activeColor: Colors.redAccent,
      onChanged:toggleMyCheckboxState,
    );

  }
}

import 'package:flutter/material.dart';
class MyListTile extends StatelessWidget {


   final bool isCheck ;
   final String myTaskTitle;
   final Function myCheckCallback;
   final Function longPressCallback;
   MyListTile ({this.isCheck, this.myTaskTitle, this.myCheckCallback, this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text (
        myTaskTitle,
        style:  TextStyle(
           decoration: isCheck? TextDecoration.lineThrough:null),
      ),
      trailing: Checkbox(
          activeColor: Colors.blueAccent,
          value: isCheck,
          onChanged:  myCheckCallback,
      ),
    );
  }
}

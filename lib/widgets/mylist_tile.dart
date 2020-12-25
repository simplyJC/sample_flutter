
import 'package:flutter/material.dart';
class MyListTile extends StatelessWidget {


   final bool isCheck ;
   final String myTaskTitle;
   final Function myCheckCallback;
   MyListTile ({this.isCheck, this.myTaskTitle, this.myCheckCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text (myTaskTitle,
        style:  TextStyle(decoration: isCheck? TextDecoration.lineThrough:null),
      ),
      trailing: Checkbox(
          activeColor: Colors.blueAccent,
          value: isCheck,
          onChanged:  myCheckCallback,
      ),
    );
  }
}

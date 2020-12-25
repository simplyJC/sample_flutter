
import 'package:flutter/material.dart';
class MyListTile extends StatelessWidget {


   final bool isCheck ;
   final String myTaskTitle;
   MyListTile ({this.isCheck, this.myTaskTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text (myTaskTitle,
        style:  TextStyle(decoration: isCheck? TextDecoration.lineThrough:null),
      ),
      trailing: Checkbox(
          activeColor: Colors.blueAccent,
          value: isCheck,
          // checkboxState: isCheck,

      ),
    );
  }
}
//using callback anonimously
// (bool myCheckboxState) {
// setState(() {
// isCheck = myCheckboxState;
// });
// }


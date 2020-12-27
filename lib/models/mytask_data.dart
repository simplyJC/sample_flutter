import 'package:flutter/foundation.dart';
import 'package:sample_flutter/models/my_task.dart';
class MyTaskData extends ChangeNotifier{

  List<MyTask> myTask = [
    MyTask(mynametask: 'Buy milk'),
    MyTask(mynametask: 'Buy egg'),
    MyTask(mynametask: 'Buy bread'),
  ];
}
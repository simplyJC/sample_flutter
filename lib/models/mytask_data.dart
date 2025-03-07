import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:sample_flutter/models/my_task.dart';

class MyTaskData extends ChangeNotifier {
  List<MyTask> _myTask = [
    MyTask(mynametask: 'Buy milk'),
    MyTask(mynametask: 'Buy egg'),
    MyTask(mynametask: 'Buy bread'),
  ];
//creating  getter
  UnmodifiableListView<MyTask> get getterMyTask {
    return UnmodifiableListView(_myTask);
  }

  int get myTaskCount {
    return _myTask.length;
  }

  void addMyTask(String newValueOfText) {
    final myNewTask = MyTask(mynametask: newValueOfText);
    _myTask.add(myNewTask);
    notifyListeners();
  }

  void updateMyTask (MyTask myNewTask){
      myNewTask.toggleDone();
      notifyListeners();
  }

  void deleteMyTask (MyTask myTask){
    _myTask.remove(myTask);
    notifyListeners();
  }
}

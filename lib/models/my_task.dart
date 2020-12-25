
class MyTask {
  final String mynametask;
  bool myIsDone;

  MyTask ({this.mynametask, this.myIsDone = false});

   void toggleDone (){
     myIsDone = !myIsDone;
   }

}
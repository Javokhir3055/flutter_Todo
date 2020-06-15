import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';

class AddTaskScreen extends StatelessWidget {
  final List<Task> tasks;
final Function onPressed;
   AddTaskScreen({Key key, this.tasks, this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String newTaskName;

    return SingleChildScrollView(
      child: Container(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500),
              ),
              TextField(
                decoration: InputDecoration(),
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText) {
                  newTaskName = newText;
                },
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                onPressed: (){
                  onPressed(newTaskName);
                },
                
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.lightBlueAccent,
              )
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
        ),
        color: Color(0xff757575),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_game/model/taskDetailArguments.dart';

class TaskListPage extends StatefulWidget {
  final String title;

  TaskListPage(this.title);

  @override
  TaskListState createState() => TaskListState();
}

class TaskListState extends State<TaskListPage> {
  List<bool> list = [false, true, false, true, false, true, false, true, false, false];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text(this.widget.title),
            bottom: TabBar(
              tabs: [
                Tab(text: "Trideni"),
                Tab(text: "Zero waste"),
              ],
              unselectedLabelColor: Colors.black54,
            ),
          ),
          body: TabBarView(
            children: [
              ListView.builder(
                itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Checkbox(
                        value: list[index],
                        onChanged: (bool value) {
                          setState((){
                            list[index] = value;
                          });
                        },
                      ),
                      title: Text('Task with very very long text. It has to be able show very so very long text. ' + index.toString()),
                      onTap: () => Navigator.pushNamed(
                          context,
                          '/task/detail',
                          arguments: TaskDetailArguments(
                            'Task ' + index.toString(),
                              'Task with very very long text. It has to be able show very so very long text. ' + index.toString()
                          )
                      ),
                    );
                  },
              ),
              ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Checkbox(
                      value: list[index],
                      onChanged: (bool value) {
                        setState((){
                          list[index] = value;
                        });
                      },
                    ),
                    title: Text('Task ' + index.toString()),
                    onTap: () => Navigator.pushNamed(
                        context,
                        '/task/detail',
                        arguments: TaskDetailArguments(
                            'Task ' + index.toString(),
                            'Task with very very long text. ' + index.toString()
                        )
                    ),
                  );
                },
              ),
            ],
          )
      ),
    );
  }
}
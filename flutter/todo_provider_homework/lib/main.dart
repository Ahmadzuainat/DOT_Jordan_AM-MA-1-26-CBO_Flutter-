import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:todo_provider/logic.dart';

void main() {
  runApp(FirstProject());
}

class FirstProject extends StatefulWidget {
  FirstProject({super.key});

  @override
  State<FirstProject> createState() => _FirstProjectState();
}

class _FirstProjectState extends State<FirstProject> {
  
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodoLogic(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Consumer<TodoLogic>(
          builder: (context, todoLogic, child) {
            return Scaffold(
              backgroundColor: Colors.white,
              body: Padding(
                padding: EdgeInsets.all(30),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10,
                    children: [
                      SizedBox(height: 50),
                      Text(
                        "My Todo",
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Small steps, big progress",
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                      SizedBox(height: 10),
                      Row(
                        spacing: 15,
                        children: [
                          Expanded(
                            child: TextField(
                              controller: todoLogic.todoCtr,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                hintText: "Add a new todo",
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                          MaterialButton(
                            minWidth: 50,
                            onPressed: () {
                              todoLogic.addTodo();
                            },
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(Icons.add, color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Tasks",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Card(
                            color: Colors.green[100],
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Text(
                                "${todoLogic.todoList.length} tasks",
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                          ),
                        ],
                      ),
                      ...todoLogic.todoList.asMap().entries.map((entry) {
                        int index = entry.key;
                        return Container(
                          height: 60,
                          width: 400,
                          decoration: BoxDecoration(
                            color: Colors.green[100],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Checkbox(
                                  value: todoLogic.todoCheck[index],
                                  onChanged: (value) {
                                    todoLogic.checkTodo(index);
                                  },
                                ),
                                Text(todoLogic.todoList[index]),
                                Spacer(),
                                InkWell(
                                  onTap: () {
                                    todoLogic.removeTodo(index);
                                  },
                                  child: Container(
                                    width: 50,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.red[100],
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(
                                      Icons.delete_outline,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

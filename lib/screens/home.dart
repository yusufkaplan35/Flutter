import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todo_app/constants/color.dart';
import 'package:todo_app/constants/tasktype.dart';
import 'package:todo_app/model/task.dart';
import 'package:todo_app/screens/add_new_task.dart';
import 'package:todo_app/todoitem.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /* List<String> todo = ["Study Lessons", "Run 5K", "Go to party"];
  List<String> completed = ["Game meetup", "Take out trash"]; */

  List<Task> todo = [
    Task(
        taskType: TaskType.note,
        title: "Study Lesson",
        description: "Study COM117",
        isCompleted: false),
    Task(
        taskType: TaskType.calendar,
        title: "Go to party",
        description: "Attend to party",
        isCompleted: false),
    Task(
        taskType: TaskType.contest,
        title: "Run 5K",
        description: "Run 5 kilometers",
        isCompleted: false),
  ];

  List<Task> completed = [
    Task(
        taskType: TaskType.calendar,
        title: "Go to party",
        description: "Attend to party",
        isCompleted: false),
    Task(
        taskType: TaskType.contest,
        title: "Run 5K",
        description: "Run 5 kilometers",
        isCompleted: false),
  ];

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidht = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            backgroundColor: HexColor(backgrounColor),
            body: Column(
              children: [
                //Header
                Container(
                  width: deviceWidht,
                  height: deviceHeight / 3,
                  decoration: const BoxDecoration(
                    //color: Colors.orangeAccent,
                    image: DecorationImage(
                      image: AssetImage(
                          "lib/assets/images/Utaksis_Wallpaper_14.png"),
                    ),
                  ),
                  child: const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          "Ütaksis",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: Text(
                          "Mobile App",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                //Top Column
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: SingleChildScrollView(
                        child: ListView.builder(
                      primary: false,
                      shrinkWrap: true,
                      itemCount: todo.length,
                      itemBuilder: (context, index) {
                        return TodoItem(
                          task: todo[index],
                        );
                      },
                    )),
                  ),
                ),
                //Completed Text
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Completed",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                ),
                //Bottom Column
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: SingleChildScrollView(
                        child: ListView.builder(
                            shrinkWrap: true,
                            primary: false,
                            itemCount: completed.length,
                            itemBuilder: (context, index) {
                              return TodoItem(task: completed[index]);
                            })),
                  ),
                ),

                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const AddNewTaskScreen(),
                      ));
                    },
                    child: const Text("Add New Task"))
              ],
            )),
      ),
    );
  }
}

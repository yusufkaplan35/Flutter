import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todo_app/constants/color.dart';
import 'package:todo_app/constants/custom_row.dart';

class AddNewTaskScreen extends StatelessWidget {
  const AddNewTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidht = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor(backgrounColor),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: deviceWidht,
                height: deviceHeight / 10,
                decoration: const BoxDecoration(
                  color: Colors.orange,
                  image: DecorationImage(
                      image: AssetImage(
                          "lib/assets/images/Utaksis_Wallpaper_14.png"),
                      fit: BoxFit.cover),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.close,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                    const Expanded(
                        child: Text(
                      "Add New Task",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 21),
                      textAlign: TextAlign.center,
                    ))
                  ],
                ),
              ),
              const Padding(
                  padding: EdgeInsets.only(top: 10), child: Text("Task Title")),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  decoration:
                      InputDecoration(filled: true, fillColor: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Category"),
                    GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            duration: Duration(microseconds: 300),
                            content: Text("Category selected"),
                          ),
                        );
                      },
                      child: Image.asset("lib/assets/images/Category_1.png"),
                    ),
                    GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            duration: Duration(microseconds: 300),
                            content: Text("Category selected"),
                          ),
                        );
                      },
                      child: Image.asset("lib/assets/images/Category_2.png"),
                    ),
                    GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            duration: Duration(microseconds: 300),
                            content: Text("Category selected"),
                          ),
                        );
                      },
                      child: Image.asset("lib/assets/images/Category_3.png"),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    CustomRow("Date"),
                    CustomRow("Time"),
                  ],
                ),
              ),
              const Padding(
                  padding: EdgeInsets.only(top: 10), child: Text("Notes")),
              const SizedBox(
                height: 300,
                child: TextField(
                  expands: true,
                  maxLines: null,
                  decoration: InputDecoration(
                      filled: true, fillColor: Colors.white, isDense: true),
                ),
              ),
              ElevatedButton(onPressed: () {}, child: const Text("Save")),
            ],
          ),
        ),
      ),
    );
  }
}

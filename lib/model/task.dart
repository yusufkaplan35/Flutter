import 'package:todo_app/constants/tasktype.dart';

class Task {
  Task(
      {required this.taskType,
      required this.title,
      required this.description,
      required this.isCompleted});

  final TaskType taskType;
  final String title;
  final String description;
  bool isCompleted;
}

import 'package:flutter/material.dart';

import '../models/student.dart';

class StudentsList extends ChangeNotifier {
  final _students = <Student>[];

  void addStudent(Student student) {
    _students.add(student);
    notifyListeners();
  }

  List<Student> get studentsList => _students;
}

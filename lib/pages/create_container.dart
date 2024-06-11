import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/student.dart';
import '../providers/studentlist_provider.dart';

class CreateContainer extends StatefulWidget {
  const CreateContainer({super.key});

  @override
  State<CreateContainer> createState() => _CreateContainerState();
}

class _CreateContainerState extends State<CreateContainer> {
  late final TextEditingController _nameController;
  late final TextEditingController _adressController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _adressController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: MaterialButton(
        color: Colors.green,
        child: const Text('SAVE'),
        onPressed: () {
          debugPrint('Name: ${_nameController.text} Adresse: ${_adressController.text}');

          Provider.of<StudentsList>(context, listen: false).addStudent(
            Student(
              name: _nameController.text,
              address: _adressController.text,
            ),
          );

          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Name',
              ),
              controller: _nameController,
            ),
            const SizedBox(height: 32),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Adresse',
              ),
              controller: _adressController,
            ),
          ],
        ),
      ),
    );
  }
}

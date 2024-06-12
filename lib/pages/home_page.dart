import 'package:flutter/material.dart';
import 'package:flutter_hci/providers/darkmode_provider.dart';
import 'package:provider/provider.dart';

import '../providers/studentlist_provider.dart';
import 'create_container.dart';
import '../widgets/mein_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<StudentsList>(
      builder: (context, value, child) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CreateContainer()),
              );
            },
            child: const Icon(Icons.add),
          ),
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Meine App'),
            actions: [
              IconButton(
                icon: Provider.of<DarkMode>(context, listen: true).darkMode
                    ? const Icon(Icons.light_mode)
                    : const Icon(Icons.dark_mode),
                onPressed: () => Provider.of<DarkMode>(context, listen: false).toggleThemeMode(),
              ),
            ],
          ),
          body: value.studentsList.isEmpty
              ? const Center(
                  child: Text('Erstelle einen neuen Studenten!'),
                )
              : ListView(
                  children: [
                    for (final student in value.studentsList)
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: MeinContainer(
                          name: student.name,
                          adresse: student.address,
                        ),
                      ),
                  ],
                ),
        );
      },
    );
  }
}

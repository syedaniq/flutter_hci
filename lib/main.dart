import 'package:flutter/material.dart';
import 'package:flutter_hci/pages/home_page.dart';
import 'package:flutter_hci/providers/darkmode_provider.dart';
import 'package:flutter_hci/providers/studentlist_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DarkMode()),
        ChangeNotifierProvider(create: (context) => StudentsList()),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DarkMode>(
      builder: (context, value, child) {
        return MaterialApp(
          theme: value.darkMode ? ThemeData.dark() : ThemeData(),
          debugShowCheckedModeBanner: false,
          home: const HomePage(),
        );
      },
    );
  }
}

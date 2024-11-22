import 'package:flutter/material.dart';
import 'package:oncoto/view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oncoto Applications',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 58, 71, 183)),
        useMaterial3: true,
      ),
      home: HomeView(),
    );
  }
}

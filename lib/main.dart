import 'package:flutter/material.dart';
import 'package:lab3_642021148/pages/firstpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            background: Color.fromARGB(253, 182, 73, 233)),
        useMaterial3: true,
      ),
      home: firstpage(),
    );
  }
}

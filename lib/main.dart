import 'package:flutter/material.dart';
import 'package:flutter_qa_test/screens/form_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QA Interview Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FormScreen(
        formKey: GlobalKey<FormState>(),
      ),
    );
  }
}

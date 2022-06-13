import 'package:codingchallenge_redandroid/screens/main/widgets/main_content.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Houses of Thrones"),),
      body: const MainContent(),
    );
  }
}

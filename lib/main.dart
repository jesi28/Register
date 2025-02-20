import 'package:flutter/material.dart';
import 'package:registration/common/ui_helper.dart';
import 'package:registration/get_started_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    UiHelper uiHelper = UiHelper();
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: uiHelper.themeData("LIGHT"),
      home: const OnBoardPage(),
    );
  }
}

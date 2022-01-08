import 'package:chat/src/res/colors.dart';
import 'package:chat/src/ui/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Chat UI',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: AppColors.accentColor,
            primary: Colors.red,
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: const Home());
  }
}

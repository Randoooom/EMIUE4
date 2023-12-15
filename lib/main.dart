import 'package:emiue4/navigation.dart';
import 'package:emiue4/view/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(const UniApp());

class UniApp extends StatelessWidget {
  const UniApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.blueGrey, foregroundColor: Colors.white)),
      home: const Scaffold(
          appBar: UniAppBar(), drawer: Drawer(), body: HomeView()),
    );
  }
}

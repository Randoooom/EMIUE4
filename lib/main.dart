import 'package:flutter/material.dart';

void main() => runApp(const UniApp());

class UniApp extends StatelessWidget {
  const UniApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Scaffold(
        appBar: UniAppBar(),
      ),);
  }
}

class UniAppBar extends StatelessWidget implements PreferredSizeWidget {
  // impl PreferredSizeWidget
  @override
  final Size preferredSize;

  const UniAppBar({Key? key})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Mein UNI-Tag'),
      leading: IconButton(
        onPressed: (//Go to TU Dresden homepage
            ) {},
        icon: Icon(Icons.home),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
      ],
    );
  }
}

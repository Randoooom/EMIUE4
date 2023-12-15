import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String content;

  const Heading(this.content, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Text(content,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)));
  }
}

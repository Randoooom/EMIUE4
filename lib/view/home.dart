import 'package:emiue4/style/heading.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        child: const Column(children: [
          InfoWidget(),
          Padding(padding: EdgeInsets.only(top: 20), child: CourseList())
        ]));
  }
}

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Column(children: [
        Heading("Meine Daten"),
        DataWidget("Matr.-Nr.", "1234567"),
        DataWidget("S-Nr.", "1234567"),
      ])
    ]);
  }
}

class DataWidget extends StatelessWidget {
  final String title, value;

  const DataWidget(this.title, this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: <TextSpan>[
      TextSpan(text: "$title: ", style: DefaultTextStyle.of(context).style),
      TextSpan(
          text: value,
          style: DefaultTextStyle.of(context)
              .style
              .copyWith(fontWeight: FontWeight.bold)),
    ]));
  }
}

class CourseList extends StatelessWidget {
  const CourseList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Column(children: [Heading("Meine Kurse")])
    ]);
  }
}

class CourseItem extends StatelessWidget {
  const CourseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Column(children: [
        Heading("Meine Kurse"),
      ])
    ]);
  }
}

class CourseItemLeadingWidget extends StatelessWidget {
  const CourseItemLeadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Column(children: [Heading("Meine Kurse")])
    ]);
  }
}

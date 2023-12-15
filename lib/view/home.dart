import 'package:emiue4/style/heading.dart';
import 'package:flutter/material.dart';

const weekdayIdentifier = ["Mo", "Di", "Mi", "Do", "Fr", "Sa", "So"];

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
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Heading("Meine Daten"),
        DataWidget("Matr.-Nr.", "1234567"),
        DataWidget("S-Nr.", "1234567")
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
    return Column(children: [
      const Align(
        alignment: Alignment.centerLeft,
        child: Heading("Meine Kurse"),
      ),
      ListView(shrinkWrap: true, children: const <Widget>[
        CourseItem(
            name: "Algorithmen und Datenstrukturen",
            lecture: TimeSlot(DateTime.monday, 9, 20),
            exercise: TimeSlot(DateTime.thursday, 9, 20)),
        CourseItem(
            name: "Einfuehrung in die Mathematik fuer Informatiker",
            lecture: TimeSlot(DateTime.monday, 15, 30),
            exercise: TimeSlot(DateTime.wednesday, 10, 50)),
        CourseItem(
            name: "Einfuehrungspraktikum Robolab",
            lecture: TimeSlot(DateTime.tuesday, 7, 30),
            exercise: TimeSlot(DateTime.tuesday, 9, 20)),
        CourseItem(
            name: "Einfuehrung in die Medieninformatik",
            lecture: TimeSlot(DateTime.wednesday, 12, 50),
            exercise: TimeSlot(DateTime.monday, 9, 20)),
      ])
    ]);
  }
}

class TimeSlot {
  final int weekday, hour, minute;

  const TimeSlot(this.weekday, this.hour, this.minute);

  /// check whether the timeslot is today or not
  bool isToday() {
    return DateTime.now().weekday == weekday;
  }

  /// Convert the int to a string
  // TODO: may use a date formatting package therefore
  String weekdayString() {
    return weekdayIdentifier[weekday - 1];
  }
}

class CourseItem extends StatelessWidget {
  final TimeSlot lecture, exercise;
  final String name;

  const CourseItem(
      {super.key,
      required this.lecture,
      required this.exercise,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Flexible(
              flex: 1,
              child: Column(children: [
                CourseItemTimeWidget(
                    slot: lecture,
                    icon: Icon(Icons.cast_for_education,
                        color:
                            lecture.isToday() ? Colors.white : Colors.black)),
                const SizedBox(height: 2),
                CourseItemTimeWidget(
                    slot: exercise,
                    icon: Icon(Icons.edit_outlined,
                        color:
                            exercise.isToday() ? Colors.white : Colors.black))
              ])),
          const SizedBox(width: 2),
          Flexible(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(8),
                height: 70,
                  color: Colors.black12,
                  child: Row(children: [
                    SizedBox(width: 180, child: Text(name)),
                    const Icon(Icons.chevron_right)
                  ])))
        ]));
  }
}

class CourseItemTimeWidget extends StatelessWidget {
  final TimeSlot slot;
  final Icon icon;

  const CourseItemTimeWidget(
      {super.key, required this.slot, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: slot.isToday() ? Colors.blueGrey : Colors.black12,
        padding: const EdgeInsets.all(5),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          icon,
          Text("${slot.weekdayString()} ${slot.hour}:${slot.minute}",
              style: TextStyle(
                  color: slot.isToday() ? Colors.white : Colors.black))
        ]));
  }
}

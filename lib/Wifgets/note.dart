import 'package:flutter/material.dart';

class NoteWidget extends StatelessWidget {
  final String title;
  final String time;

  const NoteWidget({Key? key, required this.title, required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 31, 33, 174),
      elevation: 10,
      margin: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 16.0),
      child: ListTile(
        leading: Icon(Icons.book, color: Color.fromARGB(255, 255, 255, 255)),
        title: Text(
          title,
          style: TextStyle(
              fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        subtitle: Text(
          time,
          style: TextStyle(color: Color.fromARGB(255, 241, 234, 234)),
        ),
      ),
    );
  }
}

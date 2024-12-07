import 'package:flutter/material.dart';
import 'package:flutter_application_3/Wifgets/note.dart';
import 'package:flutter_application_3/screens/add_note.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, String>> _notes = [];

  void _addNote(Map<String, String> note) {
    setState(() {
      _notes.add(note);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(56.0), // Height of the TextField
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                hintStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 174, 171, 174),
              ),
            ),
          ),
        ),
      ),
      body: _notes.isEmpty
          ? Center(
              child: Text(
                'Wali Wax Xasuusin Ma sameyn!',
                style: TextStyle(fontSize: 18.0, color: Colors.grey),
              ),
            )
          : ListView.builder(
              itemCount: _notes.length,
              itemBuilder: (context, index) {
                return NoteWidget(
                  title: _notes[index]['title']!,
                  time: _notes[index]['time']!,
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddNoteScreen(),
            ),
          );
          if (result != null && result is Map<String, String>) {
            _addNote(result);
          }
        },
        child: Icon(
          Icons.note_alt_sharp,
          color: Color.fromARGB(255, 31, 33, 174),
        ),
      ),
    );
  }
}

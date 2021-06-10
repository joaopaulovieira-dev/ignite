import 'package:flutter/material.dart';

class CreateNotePages extends StatefulWidget {
  const CreateNotePages({Key? key}) : super(key: key);

  @override
  _CreateNotePagesState createState() => _CreateNotePagesState();
}

class _CreateNotePagesState extends State<CreateNotePages> {
  var description = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Note'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.delete),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              maxLines: null,
              maxLength: 400,
              onChanged: (value) {
                description = value;
                setState(() {});
              },
            ),
            if (description.isNotEmpty)
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, description);
                },
                child: Text('Salvar'),
              ),
          ],
        ),
      ),
    );
  }
}

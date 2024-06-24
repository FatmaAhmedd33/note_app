import 'package:flutter/material.dart';

import '../widgets/add_note_buttom_sheet.dart';
import '../widgets/notes_view_body.dart';

class NotePage extends StatelessWidget {
  const NotePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton(
          iconSize: 30,
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.blueAccent)),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const AddNoteButtomSheet();
                });
          },
          icon: const Icon(Icons.add)),
      body: const NotesViewBody(),
    );
  }
}

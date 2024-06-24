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
                // any change in showModalBottomSheet to appear untill close it and open again cause has now build method here
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                context: context,
                builder: (context) {
                  return const AddNoteButtomSheet(); // but in widget AddNoteButtomSheet any change will relaod it will appear cause it in a build method
                });
          },
          icon: const Icon(Icons.add)),
      body: const NotesViewBody(),
    );
  }
}

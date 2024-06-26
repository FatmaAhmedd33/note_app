import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'custome_appbar.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomeAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(child: NotesListView())
        ],
      ),
    );
  }
}

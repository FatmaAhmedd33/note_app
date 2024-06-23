import 'package:flutter/material.dart';

import '../widgets/notes_view_body.dart';

class NotePage extends StatelessWidget {
  const NotePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: IconButton(onPressed: (){}, icon:const Icon( Icons.add)),
      body:  const NotesViewBody(),
    );
  }
}


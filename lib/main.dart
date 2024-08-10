import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit_cubit.dart';
import 'package:note_app/models/note_model.dart';

import 'views/note_page.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(
      NoteModelAdapter()); //to can save note model to your database
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      //to link the logic bloc with the ui but thats not the best practies to put it here bec there the bloc will open from app start untill end but the best the bloc work in the scrren that use it then end when the scrren close
      providers: [BlocProvider(create: ((context) => AddNoteCubitCubit()))],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: const NotePage(),
      ),
    );
  }
}

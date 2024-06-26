import 'package:flutter/material.dart';

import 'custome_appbar.dart';
import 'custome_text_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({
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
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustomeTextField(
            text: 'Title',
          ),
          SizedBox(
            height: 20,
          ),
          CustomeTextField(
            maxlines: 5,
            text: 'content',
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:note_app/widgets/custome_buttom.dart';

import 'custome_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      child: const SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
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
            CustomButton()
          ],
        ),
      ),
    );
  }
}

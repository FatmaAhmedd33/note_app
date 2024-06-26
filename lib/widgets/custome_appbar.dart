import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:note_app/widgets/custome_search_icon.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({
    super.key,
    required this.title, required this.icon,
  });
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 28),
        ),
        CustomSearchIcon(icon: icon,)
      ],
    );
  }
}

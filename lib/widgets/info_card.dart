import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String text;
  final IconData icon;
  VoidCallback onPressed;

  InfoCard({ required this.text, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: onPressed,
    child: Card(
      color: Color.fromARGB(255, 108, 108, 108),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.lightBlueAccent,
        ),
        title: Text(
          text,
          style: TextStyle(
            color: Color.fromARGB(255, 33, 216, 198),
            fontSize: 20,
            fontFamily: "Source Sans Pro"),
        ),
      ),
      )
    );
  }
}
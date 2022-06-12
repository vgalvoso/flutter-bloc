import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  const CustomTile(
      {this.bgColor = const Color.fromARGB(255, 68, 68, 68),
      this.color = Colors.white,
      required this.icon,
      this.padd = const EdgeInsets.all(5),
      super.key});

  final Color bgColor, color;
  final IconData icon;
  final EdgeInsets padd;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padd,
      child: ListTile(
        tileColor: bgColor,
        title: Icon(icon, color: Colors.white),
        onTap: () => {},
      ),
    );
  }
}

class TextTile extends StatelessWidget {
  const TextTile(
      {this.bgColor = const Color.fromARGB(255, 68, 68, 68),
      this.color = Colors.white,
      this.padd = const EdgeInsets.all(5),
      this.text = "Text",
      this.align = TextAlign.start,
      this.onTap,
      super.key});

  final Color bgColor, color;
  final EdgeInsets padd;
  final String text;
  final TextAlign align;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padd,
      child: ListTile(
        tileColor: bgColor,
        title: Text(
          text,
          style: TextStyle(color: color),
          textAlign: align,
        ),
        onTap: onTap,
      ),
    );
  }
}

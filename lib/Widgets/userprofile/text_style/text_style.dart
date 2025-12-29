import 'package:flutter/material.dart';

class NameStyle extends StatelessWidget{

  final String name;
  const NameStyle(this.name, {super.key});
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)
    );
  }
}

class SubtitleStyle extends StatelessWidget{
  final String subtile;
  const SubtitleStyle(this.subtile, {super.key});
  @override
  Widget build(BuildContext context) {
    return Text(
      subtile,
      style: TextStyle(fontSize: 16, color: Colors.grey[600]),
    );
  }
}
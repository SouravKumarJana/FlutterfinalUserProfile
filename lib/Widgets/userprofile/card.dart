import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key, required this.icon, required this.title, required this.value});

  final IconData icon;
  final String title;
  final int value;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 18);

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white30),
        boxShadow: const [BoxShadow(color: Color.fromARGB(255, 216, 212, 212), blurRadius: 2, spreadRadius: 0.2)],
      ),
      child: Row(
        children: [
          Icon(icon, size: 30, color: Colors.grey[700]),
          const SizedBox(width: 16),
          Text(title, style: textStyle),
          const Spacer(),
          Text(value.toString(), style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
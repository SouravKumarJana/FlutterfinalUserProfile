import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget{
  const FirstScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 127, 224, 231),
              Color.fromARGB(255, 37, 174, 195),
            ],
          ),
        ),
        child: const Center(
          child: Text(
            'Hello World',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        
        ),

    );
  }
}

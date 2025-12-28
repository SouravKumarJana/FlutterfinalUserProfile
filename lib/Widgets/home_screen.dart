import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/first_screen.dart';
import 'package:flutter_application_2/widgets/grid_screen.dart';
import 'second_screen.dart';
import 'bar_stack.dart';
import 'contact_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int current_index = 0;

  final List<Widget> screen = [
    FirstScreen(),
    ContactList(),
    SecondScreen(),
    FirstScreen(),
    GridScreen()
  ];

  void onTabChanged(int index) {
    setState(() {
      current_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('App Bar'), centerTitle: true,),
      body: screen[current_index],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(6),
        height: 70,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 15),
          ],
        ),
        child: BarStack(onIndexChanged: onTabChanged),
      ),
    );
  }
}

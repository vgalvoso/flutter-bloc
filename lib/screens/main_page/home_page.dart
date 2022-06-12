import 'package:flutter/material.dart';
import 'package:pos/widgets/nav_drawer.dart';
import 'package:pos/screens/main_page/left_coloumn.dart';
import 'package:pos/screens/main_page/mid_column.dart';
import 'package:pos/screens/main_page/rigth_column.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 128, 0),
        toolbarHeight: 40,
      ),
      body: Center(
        child: Row(
          children: const [
            Expanded(
              flex: 3,
              child: LeftColumn(),
            ),
            Expanded(
              flex: 5,
              child: MidColumn(),
            ),
            Expanded(
              flex: 1,
              child: RightColumn(),
            ),
          ],
        ),
      ),
    );
  }
}

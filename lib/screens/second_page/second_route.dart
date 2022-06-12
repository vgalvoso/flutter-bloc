import 'package:flutter/material.dart';
import 'package:pos/functions/main_page_functions.dart';

class SecondRoute extends StatelessWidget with MainPageFunctions {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: toHome(context),
          child: const Text("Go back!"),
        ),
      ),
    );
  }
}

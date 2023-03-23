import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:const Center (child: Text('Alert Screen'),),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child:const Icon(Icons.keyboard_return_outlined), 
      ),
    );
  }
}
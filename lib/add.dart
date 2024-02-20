import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('add',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple.shade300,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
          title: const Text('Code With Otabek'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Center(
            child: Slidable(
              endActionPane: ActionPane(
                extentRatio: 0.3,
                motion: ScrollMotion(),
                children: [
                  SlidableAction(
                    onPressed: (p) {},
                    icon: Icons.delete,
                    backgroundColor: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                    label: 'Delete',
                  ),
                ],
              ),
              startActionPane: ActionPane(
                extentRatio: 0.3,
                motion: ScrollMotion(),
                children: [
                  SlidableAction(
                    onPressed: (p) {},
                    icon: Icons.edit,
                    backgroundColor: Colors.green,
                    borderRadius: BorderRadius.circular(15),
                    label: 'Edit',
                  ),
                ],
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Slidable Package',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

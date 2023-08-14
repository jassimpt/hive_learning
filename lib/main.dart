import 'package:flutter/material.dart';
import 'package:hive_basic/home.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main(List<String> args) async {
  await Hive.initFlutter();
  var box = await Hive.openBox('testBox');
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hive basics',
      home: Homescreen(),
    );
  }
}

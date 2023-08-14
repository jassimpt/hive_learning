import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final box = Hive.box('testBox');

    void writedata() {
      box.put(1, 'hello');
    }

    void readdata() {
      print(box.get(1));
    }

    void deletedata() {
      box.delete(1);
    }

    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(onPressed: writedata, child: Text('write')),
            ElevatedButton(onPressed: readdata, child: Text('read')),
            ElevatedButton(onPressed: deletedata, child: Text('delete')),
          ],
        ),
      ),
    ));
  }
}

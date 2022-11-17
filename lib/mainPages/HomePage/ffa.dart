import 'package:flutter/material.dart';
class ffa extends StatefulWidget {
  const ffa({super.key});

  @override
  State<ffa> createState() => _ffaState();
}

class _ffaState extends State<ffa> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          leading: Icon(Icons.person),
          title: Text("我是一个列表"),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("我是一个列表"),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("我是一个列表"),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("我是一个列表"),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("我是一个列表"),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("我是一个列表"),
        )
      ],
    );
  }
}
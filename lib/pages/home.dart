import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
// import 'package:world_time/pages/decide.dart';
import 'package:world_time/pages/loading.dart';
import "home.dart";
import "choose_location.dart";
import "loading.dart";

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: Icon(Icons.edit_location),
              label: Text("edit location"))
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  void get() {
    //simulating api call.
    Future.delayed(Duration(seconds: 3), () {
      print("hey my sup");
    });
  }

  @override
  int counter = 0;
  void initState() {
    // TODO: implement initState
    super.initState();
    get();
  }

  @override
  Widget build(BuildContext context) {
    // print("build is running");
    get();
    return Scaffold(
      appBar: AppBar(
        title: Text("location"),
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        children: [
          Text("this is location page: "),
          TextButton(
              onPressed: () {
                setState(() {
                  counter += 1;
                });
              },
              child: Text('$counter'))
        ],
      )),
    );
  }
}

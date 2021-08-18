import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Align(
          alignment: Alignment.bottomRight,
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 500, right: 100)),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.edit, color: Colors.black),
                backgroundColor: Color(0xffE6E6E6),
              ),
              SizedBox(height: 20),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.camera_alt),
                backgroundColor: Color(0xff22c55a),
              ),
            ],
          )),
    );
  }
}

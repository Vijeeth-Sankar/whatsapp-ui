import 'package:flutter/material.dart';
import 'package:whatsappui/tabs/calls.dart';
import 'package:whatsappui/tabs/chats.dart';
import 'package:whatsappui/tabs/status.dart';

class Whatsapp extends StatefulWidget {
  const Whatsapp({Key? key}) : super(key: key);

  @override
  _WhatsappState createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp>
    with SingleTickerProviderStateMixin {
  late TabController tabcontroller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabcontroller = TabController(vsync: this, length: 4, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp', style: TextStyle(fontSize: 22)),
        backgroundColor: Color(0xff075E55),
        actions: [
          Icon(Icons.search, size: 28),
          Padding(
            padding: EdgeInsets.all(16),
            child: Icon(Icons.more_vert, size: 28),
          ),
        ],
        bottom: TabBar(
          tabs: [
            Padding(
              padding: EdgeInsets.all(6),
              child: Icon(Icons.camera_alt),
            ),
            Tab(child: Text("CHATS")),
            Tab(child: Text("STATUS")),
            Tab(child: Text("CALLS")),
          ],
          indicatorColor: Colors.white,
          controller: tabcontroller,
        ),
      ),
      body: TabBarView(
        controller: tabcontroller,
        children: [
          Icon(Icons.camera_alt),
          Chatscreen(),
          StatusScreen(),
          CallScreen(),
        ],
      ),
    );
  }
}

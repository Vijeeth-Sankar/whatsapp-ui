import 'package:flutter/material.dart';
import 'package:whatsappui/widgets/chatsitem.dart';

class Chatscreen extends StatefulWidget {
  const Chatscreen({Key? key}) : super(key: key);

  @override
  _ChatscreenState createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: dummies.length,
        itemBuilder: (context, i) => Column(
          children: [
            Divider(height: 8),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 60,
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    dummies[i].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  new Text(dummies[i].time, style: TextStyle(fontSize: 14))
                ],
              ),
              subtitle: Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(dummies[i].message,
                      style: TextStyle(fontWeight: FontWeight.bold))),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
        backgroundColor: Color(0xff22c55a),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:WhatsApp_Clone/models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              Divider(
                height: 10,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(dummyData[index].avatarUrl),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      dummyData[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      dummyData[index].time,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
                subtitle: Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    dummyData[index].message,
                    style: TextStyle(fontSize: 15, color: Colors.grey[600]),
                  ),
                ),
              )
            ],
          );
        });
  }
}

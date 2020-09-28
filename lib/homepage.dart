import 'package:WhatsApp_Clone/pages/call_screen.dart';
import 'package:WhatsApp_Clone/pages/camera_screen.dart';
import 'package:WhatsApp_Clone/pages/chat_screen.dart';
import 'package:WhatsApp_Clone/pages/status_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(
      length: 4,
      vsync: this,
      initialIndex: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('WhatsApp'),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: 'CHATS',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'CALLS',
            ),
          ],
        ),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          Icon(Icons.more_vert)
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CameraScreen(),
          
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Start Chatting');
        },
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.chat),
        foregroundColor: Colors.white,
      ),
    );
  }
}

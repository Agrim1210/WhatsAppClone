import 'package:flutter/material.dart';

class Chat {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  Chat(
      {@required this.name,
      @required this.message,
      @required this.time,
      @required this.avatarUrl});
}
  List<Chat> dummyData = [
    Chat(
        name: 'Agrim',
        message: 'Hi! How Are You?',
        time: '17:23',
        avatarUrl:
            'https://images.unsplash.com/photo-1494959764136-6be9eb3c261e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'),
    Chat(
        name: 'Jon',
        message: 'Hi! ',
        time: '17:03',
        avatarUrl:
            'https://images.unsplash.com/photo-1529789659325-598a5a0fd154?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80'),
    Chat(
        name: 'Drogon',
        message: 'Yo fam!!',
        time: '17:53',
        avatarUrl:
            'https://images.unsplash.com/photo-1577493340887-b7bfff550145?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=293&q=80'),
    Chat(
        name: 'Hero',
        message: 'Hi! How Are You?',
        time: '11:23',
        avatarUrl:
            'https://images.unsplash.com/photo-1573144693925-249c8159d330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=943&q=80'),
  ];


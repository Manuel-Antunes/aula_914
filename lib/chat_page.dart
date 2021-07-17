import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
    );
  }

  buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xFF075E54),
      title: buildTitle(),
      leadingWidth: 16,

      actions: [
        IconButton(
          icon: Icon(Icons.attach_file),
          iconSize: 30,
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.more_vert),
          iconSize: 30,
          onPressed: () {},
        ),
      ],
    );
  }

  buildTitle() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          buildAvatar(),
          Text('+558298748471'),
        ],
      ),
    );
  }

  buildAvatar() {
    String urlImage =
        'https://static1.purepeople.com.br/articles/9/31/19/49/@/3527475-karol-conka-pode-ter-prejuizo-de-mais-de-624x600-1.jpg';

    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: CircleAvatar(
        backgroundImage: NetworkImage(urlImage),
        radius: 20,
      ),
    );
  }
}

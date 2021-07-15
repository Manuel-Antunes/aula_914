import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
    );
  }

  buildBody() {
    return ListView(
      children: [
        buildListTile(
          urlImage: 'https://i0.wp.com/blogbhgay.moonbh.com.br/wp-content/uploads/2021/02/caio-castro-ok-1595785689.jpg?fit=680%2C645&ssl=1',
          nomeContato: '+558298745612',
          msg: 'Oi, sumida.. rsrs',
          data: 'ONTEM',
        ),
        buildListTile(
          urlImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdJIKWpDwYwER1WHZZLq_PHZBt6VCbT7byHw&usqp=CAU',
          nomeContato: '+558292545872',
          msg: 'Oi moça..',
          data: 'ONTEM',
        ),
        buildListTile(
          urlImage: 'https://static1.purepeople.com.br/articles/9/31/19/49/@/3527475-karol-conka-pode-ter-prejuizo-de-mais-de-624x600-1.jpg',
          nomeContato: '+558298748471',
          msg: 'E aquele açai, vamos?',
          data: 'ANO PASSADO',
        ),
      ],
    );
  }

  buildListTile(
      {String urlImage, String nomeContato, String msg, String data}) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(urlImage),
        radius: 28,
      ),
      title: Text(
        nomeContato,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      subtitle: Text(msg),
      trailing: Text(
        data,
        style: TextStyle(color: Colors.grey),
      ),
    );
  }

  buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xFF075E54),
      title: Align(
        alignment: Alignment.centerLeft,
        child: Text('WhatsApp'),
      ),
    );
  }
}

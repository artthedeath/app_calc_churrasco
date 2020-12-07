import 'package:flutter/material.dart';

class HistoricPage extends StatefulWidget {
  @override
  _HistoricPageState createState() => _HistoricPageState();
}

class _HistoricPageState extends State<HistoricPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historico'),
        backgroundColor: Colors.red,
        centerTitle: true,
        actions: [
          IconButton(
              hoverColor: Colors.red,
              icon: Icon(Icons.menu),
              onPressed: () {
                Navigator.pushNamed(context, 'home');
              })
        ],
      ),
    );
  }
}

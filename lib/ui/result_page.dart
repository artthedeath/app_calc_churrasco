import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultado'),
        backgroundColor: Colors.red,
        centerTitle: true,
        actions: [
          IconButton(
              hoverColor: Colors.red,
              icon: Icon(Icons.perm_device_info),
              onPressed: () {
                Navigator.pushNamed(context, 'historic');
              })
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              RaisedButton(
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text("Novo Calculo!"),
                  onPressed: () {
                    Navigator.pushNamed(context, 'home');
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

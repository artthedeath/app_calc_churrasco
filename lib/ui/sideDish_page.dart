import 'package:flutter/material.dart';

class SideDishPage extends StatefulWidget {
  @override
  _SideDishPageState createState() => _SideDishPageState();
}

class _SideDishPageState extends State<SideDishPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opções de Acompanhamento'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Text("Arroz"),
                trailing: Icon(Icons.favorite),
                onTap: () {},
              ),
              ListTile(
                title: Text("Vinagrete"),
                trailing: Icon(Icons.favorite),
                onTap: () {},
              ),
              ListTile(
                title: Text("Farofa"),
                trailing: Icon(Icons.favorite),
                onTap: () {},
              ),
              RaisedButton(
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text("Ok!"),
                  onPressed: () {
                    Navigator.pushNamed(context, 'result');
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

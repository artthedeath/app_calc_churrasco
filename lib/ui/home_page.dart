import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _homemController = TextEditingController();
  final TextEditingController _mulherController = TextEditingController();
  final TextEditingController _criancaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de Churrasco'),
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
        child: Column(
          children: [
            TextFormField(
              controller: _homemController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: "Homem:",
                labelStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            Divider(),
            TextFormField(
              controller: _mulherController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: "Mulher:",
                labelStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            Divider(),
            TextFormField(
              controller: _criancaController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: "Criança:",
                labelStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            Divider(),
            RaisedButton(
                color: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Text("Ok!"),
                onPressed: () {
                  setState(() {
                    Firestore.instance
                        .collection("teste")
                        .document("homem")
                        .setData({"quantidade": 'teste'});
                  });

                  Navigator.pushNamed(context, 'meat');
                }),
          ],
        ),
      ),
    );
  }
}

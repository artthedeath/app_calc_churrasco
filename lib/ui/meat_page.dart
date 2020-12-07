import 'package:flutter/material.dart';

class MeatPage extends StatefulWidget {
  @override
  _MeatPageState createState() => _MeatPageState();
}

class _MeatPageState extends State<MeatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opções de Carne'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Text("Picanha"),
                trailing: Icon(Icons.favorite),
                onTap: () {},
              ),
              ListTile(
                title: Text("Alcatra"),
                trailing: Icon(Icons.favorite),
                onTap: () {},
              ),
              ListTile(
                title: Text("Contrafilé"),
                trailing: Icon(Icons.favorite),
                onTap: () {},
              ),
              ListTile(
                title: Text("Pernil"),
                trailing: Icon(Icons.favorite),
                onTap: () {},
              ),
              ListTile(
                title: Text("Lombo"),
                trailing: Icon(Icons.favorite),
                onTap: () {},
              ),
              ListTile(
                title: Text("Coxinha"),
                trailing: Icon(Icons.favorite),
                onTap: () {},
              ),
              ListTile(
                title: Text("Asa"),
                trailing: Icon(Icons.favorite),
                onTap: () {},
              ),
              ListTile(
                title: Text("linguiça"),
                trailing: Icon(Icons.favorite),
                onTap: () {},
              ),
              RaisedButton(
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text("Ok!"),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Deseja Acompanhamento ?"),
                            actions: [
                              FlatButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.pushNamed(context, 'sideDish');
                                },
                                child: Text("Sim"),
                              ),
                              FlatButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.pushNamed(context, 'result');
                                  },
                                  child: Text("Não"))
                            ],
                          );
                        });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

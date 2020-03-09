import 'package:flutter/material.dart';
import 'package:formsapp/models/formModel.dart';

// Create a Form widget.
class DetailScreen extends StatelessWidget {
  final FormModel form;

  DetailScreen({Key key, @required this.form}):super(key:key);
@override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Detail Page"),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Center(child: Text('Here are the form details')),
            Container(
              height: 50,
              color: Colors.amber[600],
              child: Center(child:Text(form.name)
              ),
            ),
            Container(
              height: 50,
              color: Colors.amber[500],
              child: Center(child: Text(form.surname),
              ),
            ),
            Container(
              height: 50,
              color: Colors.amber[100],
              child: Center(child:Text(form.subject),
              ),
            ),
            Container(
              height: 50,
              color: Colors.amber[100],
              child: Center(child: Text(form.genre),
              ),
            ),
            Container(
              height: 50,
              color: Colors.amber[100],
              child: Center(child:Text(form.artist)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
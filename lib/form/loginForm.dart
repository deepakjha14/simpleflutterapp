import 'package:flutter/material.dart';
import '../detailScreen/detailScreen.dart';

import '../models/formModel.dart';
import 'dart:async';

// Create a Form widget.
class LoginForm extends StatefulWidget {
  @override
  MyLoginFormState createState() {
    return MyLoginFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyLoginFormState extends State<LoginForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  final formState = new FormState();
  String _date =  new DateTime.now().toString().substring(0,11);
  FormModel formData = FormModel();
  // Map<String, String> formData = {
  //   'name':'', 
  //   'surname':'',
  //   'genre':'',
  //   'artist':'',
  //   'subject':'',
  //   'location':''
  //   }; 

  DateTime birthDate;

  Future _selectDateTime() async{
    //TimeOfDay _time = new TimeOfDay.now();

    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(1900),
      lastDate: new DateTime(2100),
    );

    if(picked != null){
      setState(() =>_date = picked.toString().substring(0,11));
    }
  }

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(
      resizeToAvoidBottomInset:true,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Demo"),
      ),
      body: 
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Align(
          alignment: Alignment.center,
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter first name',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter first name';
                    }
                    return null;
                  },
                  onSaved: (val){
                    formData.name = val;
                  },
                ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter surname',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter surname';
                    }
                    return null;
                  },
                  onSaved: (val){
                    formData.surname = val;
                  }
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Please enter the location',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter location';
                    }
                    return null;
                  },
                  onSaved: (val){
                    formData.location = val;
                  }
                ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Favourite subject',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter the subject';
                    }
                    return null;
                  },
                  onSaved: (val){
                    formData.subject = val;
                  }
                ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Favourite artist',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter artist name';
                    }
                    return null;
                  },
                  onSaved: (val){
                    formData.artist = val;
                  }
                ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Please enter genre',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter genre of music';
                    }
                    return null;
                  },
                  onSaved: (val){
                    formData.genre = val;
                  }
                ),
                ),
                Center(
                  child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 26.0, 16.0, 16.0),
                  child: InkWell(
                    onTap: (){
                      _selectDateTime();
                    },
                    child: Text(
                      '$_date',
                    )
                  ),
                ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Center(
                      child: SizedBox(
                        width: 300.0,
                        child: RaisedButton(
                          onPressed: () {
                          // Validate returns true if the form is valid, or false
                          // otherwise.
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                            //Navigator.pushNamed(context, '/detail');
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DetailScreen(form:formData)),
                            );
                          }
                        },
                      child: Text(
                        'Submit Form',
                        style: TextStyle(fontSize: 20)
                      )
                    ),
                      ),
                  ),
                ),
              ],
            ),
            ),
            
          ),
        ),
      ),
    );
  }
}

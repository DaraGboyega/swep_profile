import 'package:swep_profile/contact.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:swep_profile/config/assets.dart';
import 'package:swep_profile/config/constants.dart';
import 'package:swep_profile/config/themes.dart';


class Contacts extends StatelessWidget {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Contact newContact = new Contact();
    return new Scaffold(
        key: _scaffoldKey,
        body: SafeArea(
        top: false,
        bottom: false,
        child: new Form(
          key: _formKey,
          autovalidate: true,
          child: new ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          children: <Widget>[
            new TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter your first and last name',
                labelText:'Name',
              ),
              onSaved: (val) => newContact.name = val,
            ),
            new TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter your email address',
                labelText: 'Email',
              ),
              onSaved: (val) => newContact.email = val,
            ),
            new TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter your phone number',
                labelText: 'Phone Number'
              ),
              onSaved: (val) => newContact.phone = val,
            ),
            new TextFormField(
              decoration: const InputDecoration(
                hintText: 'What do you want from me?'
              ),
              onSaved: (val) => newContact.description = val,
            ),
            new Container(
              padding: const EdgeInsets.only(left: 40.0, top: 20.0),
              child: new RaisedButton(
                child: const Text('Submit'),
                onPressed: _submitForm,
              ),
            )
          ],
        ),
        )
      ),
    );
  }
  void _submitForm() {  
    final FormState form = _formKey.currentState;

    if (!form.validate()) {
      showMessage('Form is not valid! please review and correct.');
    } else {
      form.save();
      print('Form save called, newContact is now up to date...');
    }
  }

  void showMessage(String message, [MaterialColor color = Colors.red]) {
    _scaffoldKey.currentState.showSnackBar(new SnackBar(backgroundColor: color, content: new Text(message)));
  }
}

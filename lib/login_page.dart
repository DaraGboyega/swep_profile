import 'package:swep_profile/login.dart';
import 'package:swep_profile/tabs/contacts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UpdateNo(),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Consumer<UpdateNo> (
          builder: (context, model, child) {
              return Material(
                child: Row(children: <Widget>[
                 TextField(
                  controller: model.loginController,
                  onEditingComplete: () => model.updateNo(),
                  decoration: InputDecoration(
                    hintText: 'Enter new phone number',
                    icon: Icon(Icons.edit)
                  ),
                ),
                Container(
              padding: const EdgeInsets.only(left: 40.0, top: 20.0),
              child: new RaisedButton(
                child: const Text('Submit'),
                onPressed: () => model.updateNo() ,
              ),
            )
                ],
                )
              );
          }
        )
      ),
    );
  }
}
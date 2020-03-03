import 'package:swep_profile/login.dart';
import 'package:swep_profile/config/assets.dart';
import 'package:swep_profile/config/constants.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'package:provider/provider.dart';


class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => UpdateNo(),
        child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Consumer<UpdateNo>(
                 builder: (context, model, child) { return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: Image.asset(Assets.avatar).image,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Dara Adegboyega',
                    textScaleFactor: 4,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Flutter. Machine Learning. \n300 level student of Obafemi Awolowo University. \nPerpetually hungry.',
                    style: Theme.of(context).textTheme.caption,
                    textScaleFactor: 2,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      FlatButton.icon(
                        icon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(Assets.github),
                        ),
                        label: Text('Github'),
                        onPressed: ()=> html.window.open(Constants.PROFILE_GITHUB, 'daragboyega'),
                      ),
                      FlatButton.icon(
                        icon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(Assets.gmail),
                        ),
                        label: Text('Gmail'),
                        onPressed: ()=> html.window.open(Constants.PROFILE_GMAIL, 'daragboyega74@gmail.com'),
                      ),
                      FlatButton.icon(
                        icon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(Assets.twitter),
                        ),
                        label: Text('Twitter'),
                        onPressed: ()=> html.window.open(Constants.PROFILE_TWITTER, 'ai_chief'),
                      ),
                      Container(
                        child: Text('${model.loginKey}')
                      )
                    ],
                  )
                ],
              );
             }
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:swep_profile/login_page.dart';
import 'package:swep_profile/tabs/contacts.dart';
import 'package:swep_profile/tabs/about.dart';
import 'package:swep_profile/widgets/theme_inherited_widget.dart';
import 'package:flutter/material.dart';
import 'package:swep_profile/config/assets.dart';
import 'config/themes.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static List<Widget> tabWidgets = <Widget>[
    About(),
    Contacts(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: ThemeSwitcher.of(context).isDarkModeOn?Icon(Icons.wb_sunny):Image.asset(Assets.moon,height: 20,width: 20,),
              onPressed: ()=> ThemeSwitcher.of(context).switchDarkMode(),
              ),
          FlatButton.icon(
            label: Text('Login'),
            icon: Icon(Icons.input),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage())
              );
            }
          )    
        ]
      ),
      body: Center(
        child: tabWidgets.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('About')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            title: Text('Contact Me')
          )
        ],
        currentIndex: _selectedIndex,
        onTap: (index)=> setState(() => _selectedIndex = index),
        selectedItemColor: Theme.of(context).accentColor,
      ),
    );
  }


}
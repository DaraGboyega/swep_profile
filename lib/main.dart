import 'home_page.dart';
import 'widgets/theme_inherited_widget.dart';
import 'package:flutter/material.dart';
import 'config/themes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitcherWidget(
      initialDarkModeOn: false,
      child: dAra(),
    );
  }
}

class dAra extends StatelessWidget {
  const dAra({
    Key key,
  }) : super(key: key);

  @override


  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dara Adegboyega',
        theme:ThemeSwitcher.of(context).isDarkModeOn?darkTheme(context):lightTheme(context),
      home: HomePage(),
      );
    }
  }
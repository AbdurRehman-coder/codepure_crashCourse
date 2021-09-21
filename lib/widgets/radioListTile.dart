import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'themeChangerProvider.dart';


class RadioListClass extends StatefulWidget {
  RadioListClassState createState() => RadioListClassState();
}

class RadioListClassState extends State<RadioListClass> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChangerScreen>(context);
    return Row(
      children: [
           RadioListTile<ThemeMode>(
            title: Text('Light'),
            value: ThemeMode.light,
            onChanged: themeChanger.setTheme,
            groupValue: themeChanger.themeMode,
          ),
           RadioListTile<ThemeMode>(
            title: Text('dark'),
            value: ThemeMode.dark,
            onChanged: themeChanger.setTheme,
            groupValue: themeChanger.themeMode,
          )
    ]
    );

  }
}
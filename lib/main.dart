import 'package:flutter/material.dart';
import 'component_builder.dart';
import 'routes.dart';

void main() => runApp(CBIRAPP());


class CBIRAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ComponentBuilder(context).appName,
      routes: routes,
      theme: ThemeData(
        fontFamily: 'Kiro',
        canvasColor: ComponentBuilder(context).canvasColor,
        primaryColor: ComponentBuilder(context).primaryColor,
        buttonTheme: ButtonThemeData(
          padding: EdgeInsets.symmetric(vertical: 12.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}

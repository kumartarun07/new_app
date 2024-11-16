import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget 
{
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(title: Text("Settings"),),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.pink,
      ),
    );
  }
}

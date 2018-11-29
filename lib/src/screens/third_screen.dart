import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text('Third Screen')
      ),
      body: Center(
        child: RaisedButton(
          child: Text('I am  the dashboard. Click me to logout.'),
          onPressed: (){
            Navigator.of(context).pushNamedAndRemoveUntil("/first_screen",(Route<dynamic> route)=>false);
          },
        ),
      )
    );
  }
}
import 'package:flutter/material.dart';
import './second_screen.dart';

class FirstScreen extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text('First Screen')
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Launch Second Screen'),
          onPressed: (){
            Navigator.of(context).pushNamed("/second_screen");
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));
          },
        ),
      )
    );
  }
}
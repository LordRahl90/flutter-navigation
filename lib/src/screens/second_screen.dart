import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text('Second Screen')
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Back to First Screen'),
              onPressed: (){
                Navigator.of(context).pop();
                // print('I am launching the second screen.');
              },
            ),
            RaisedButton(
              child: Text('Move on to Dashboard'),
              onPressed: (){
                Navigator.of(context).pushNamedAndRemoveUntil("/third_screen",(Route<dynamic> route)=>false);
              },
            )
            
          ],
        )
      )
    );
  }
}
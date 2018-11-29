import 'package:flutter/material.dart';
import './screens/first_screen.dart';
import './screens/second_screen.dart';
import './screens/third_screen.dart';

class App extends StatelessWidget{

  Widget build(BuildContext context){
    return MaterialApp(
      title: "Navigation Test",
      home: buildHome(),
      routes: routes()
    );
  }

  Widget buildHome(){
    num i=1;
    if(i%2==0){
      return FirstScreen();
    }else{
      return ThirdScreen();
    }
  }

  Map<String,WidgetBuilder> routes(){
    num i=1;
    return <String,WidgetBuilder>{
      "/first_screen":(BuildContext context)=>FirstScreen(),
      "/second_screen": (BuildContext context)=>SecondScreen(),
      "/third_screen": (BuildContext context)=>ThirdScreen()
    };
  }
}
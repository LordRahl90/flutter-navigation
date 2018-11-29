import 'package:flutter/material.dart';
import './tab_screens/home.dart';

class ThirdScreen extends StatefulWidget{
  @override
    State<StatefulWidget> createState() {
      return _ThirdScreen();
    }
}

class _ThirdScreen extends State<ThirdScreen>{

  int _currentIndex=0;
  List<Widget> _children=[
    Home(Colors.blue),
    Home(Colors.green),
    Home(Colors.red)
  ];
  
  Widget build(BuildContext context){
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
            child: Text('Header'),
            decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title:Text('Third Screen')
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTapped,
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text('Mail')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile')
          ),
        ]
      ),
    );
  }

  void onTapped(int index){
    setState(() {
        _currentIndex=index;
    });
  }

  // Widget appDrawer(){
  //   return 
  // }
}
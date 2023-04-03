import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//drawer,appbar,floatactionpoint,bottomnavigationbar
class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    //ctrl+q to see properties quickly
    return Scaffold(
      //1
      appBar: AppBar(title: Text('hello'),

        centerTitle: true,
        backgroundColor: Colors.yellow,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.settings))
        ],
        elevation: 20,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft:Radius.circular(20) )),

      ),
      //2
      drawer: Drawer(
        child: ListView(
          //take group of items
          children: [
            ListTile(title: Text('1'),),
            ListTile(title: Text('2'),),
            ListTile(title: Text('3'),)
          ],
        ),
      ),
      //3
      body: Center(
        child: Text('welcome to our course '),
      ),


      //4
      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.add),
        onPressed: (){
          print('hi nnn');
        },
        backgroundColor: Colors.amberAccent,
      ),

      //5
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.green,
        //postion0
        currentIndex: 0,
        //group of items butons
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.list),
              label: 'list'),
          BottomNavigationBarItem(icon:Icon(Icons.home),label: 'home' ),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'setting')
        ],
      ),
    );

  }
}

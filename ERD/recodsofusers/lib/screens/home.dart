import 'package:flutter/material.dart';
import 'package:recodsofusers/screens/viewdata.dart';
import 'register.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: SafeArea(
            child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Hello There!",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "You can record your info now",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey[700], fontSize: 15),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Center(
                      child: Container(
                        height: MediaQuery.of(context).size.height / 3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: AssetImage('images/home.png'))),
                      ),
                    ),
SizedBox(height: 30,),
                    MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Register()),
                        );
                      },
                      color: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      child: Text(
                        "Record Now",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),

              ]),
        ))
        ,
        floatingActionButton: FabCircularMenu(
          fabSize: 60,
          ringColor: Colors.deepOrange,
            fabCloseColor:Colors.deepOrange,
            fabColor:Colors.deepOrange ,
            children: <Widget>[
              IconButton(icon: Icon(Icons.add_to_queue_outlined), onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Register()),
                );
              }),
              IconButton(icon: Icon(Icons.search_off_outlined), onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ViewData()),
                );
              })
            ]
        )
    );
  }
}

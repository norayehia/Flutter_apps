import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'screens/home.dart';
void main() => runApp(MyApp());

/*class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blood bank',
      home:One() ,
      routes:{

        'Enter':(context)=>Enter(),
        'Two':(context)=>Two(),
        'Login':(context)=>Login(),
        'three':(context)=>three(),
        'four':(context)=>four(),
        'five':(context)=>five(),
        'six':(context)=>six(),
        'Account':(context)=>Account(),
        'place':(context)=>place(),



      } ,

    );
  }
}*/

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context)
  {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          primarySwatch: Colors.blueGrey),

      home:new Homepage(),

    );
  }
}


//1homecolumn(expand1stackimg,button)(2expand3card)(3txtwelcome)>place,ldonor,enter
//databasehelper to define bathto databaseurl phpmyadmin ,method that deal with it login,save,register
//2utiles/ network >>inthispage method to getdata to list to use this list to listview like wemade with data get from sqliteapp
//3models >class of user id,name,...,method to convertjson and from json//class post
//screens
//acount (column(circlavatarimg,row(circle,txt),repeatrow)
//contact imgwith 2button
//enter not used
//locationdonor> listviewbulder to view datat from list of objects to us in listviewbuilder userobjectofclass[index]
//login2 >listview(img,2txtfield,button(onpressed>loginmethod post datawith login in helper ))
//register >like login but post to data in json to datbase in oonpressed of button






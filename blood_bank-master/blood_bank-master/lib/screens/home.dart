import 'package:flutter/material.dart';
import 'package:bloodbank/screens/register.dart';
import 'package:bloodbank/screens/enter.dart';
import 'package:bloodbank/screens/select.dart';
import 'package:bloodbank/screens/three.dart';
import 'package:bloodbank/screens/contact.dart';
import 'package:bloodbank/screens/post.dart';
import 'package:bloodbank/screens/Account.dart';
import 'package:bloodbank/screens/login2.dart';

import 'package:bloodbank/screens/posth.dart';
import 'package:bloodbank/screens/locationdonar.dart';
class Homepage extends StatelessWidget {
  //final screenHeight = MediaQuery.of(context).size.height;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: new Text("bloodbank"),
        //elevation: defaultPlatform,
      ),
      drawer: new Drawer(
        child:Container(color: Colors.blueGrey,
          child: new ListView(

            children: <Widget>[

              new CircleAvatar(
                child:
                Image.asset('images/blood.jpg'),/* NetworkImage(
                    'https://w0.pngwave.com/png/639/452/computer-icons-avatar-user-profile-people-icon-png-clip-art.png'),*/
                radius: 50.0,
              ),

              new ListTile(
                  title: new Text("profile"),
                  trailing: new Icon(Icons.person),
                  onTap: () {
                    // Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Account()));}
              ),
              new ListTile(
                  title: new Text("login"),
                  trailing: new Icon(Icons.verified_user),
                  onTap: () {
                    //Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Login()));}
              ),

              new ListTile(
                  title: new Text("aboutus"),
                  trailing: new Icon(Icons.add_circle),
                  onTap: () {
                    //Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new place()));}
              ),
              new ListTile(
                  title: new Text("register"),
                  trailing: new Icon(Icons.brightness_high),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Enter()));}
              ),
              new ListTile(
                  title: new Text(" addpost"),
                  trailing: new Icon(Icons.add),
                  onTap: () {
                    // Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new five()));}
              ),


              new ListTile(
                  title: new Text("contcts"),
                  trailing: new Icon(Icons.border_color),
                  onTap: () {
                    // Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new four()));}
              ),
              new ListTile(
                  title: new Text("find donar"),
                  trailing: new Icon(Icons.select_all),
                  onTap: () {
                    // Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new ldonor()));}
              ),
              new ListTile(
                  title: new Text("posts"),
                  trailing: new Icon(Icons.pool),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new post()));}
              ),

            ],
          ),),
      ),
      body: //new Container(
      //child: new Center(
      /*  ListView(
        children: <Widget>[*/
      //1hoooome...............
      // column(expand1stackimg,button)(2expand3card)(3txtwelcome)
      Column(
        children: <Widget>[
          //1
          Expanded(
            flex: 4,
            child: Stack(
              children: <Widget>[
                // new Image.asset('images/th.jpg'),
                //Divider(height: 30, color: Colors.purple),
                Container(

                  child: Image.asset('images/blood.jpg',width: 6000,height: 6000),


                  // new Image.asset('images/th.jpg'),
                  //color: Colors.purple.withOpacity(0.5),
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),

                    Spacer(),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 70.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[InkWell(
                            onTap: () {
                              //Navigator.of(context).pop();
                              Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new place()));},
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 4),
                              decoration: BoxDecoration(
                                // gradient: appGradient,
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.all(Radius.circular(4)),
                              ),
                              child: Text(
                                "ask",
                                //  style: newGameTextStyle,
                              ),
                            ),
                          ),
                            /* RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "",
                                   // style: newGameTextStyle,
                                  ),
                                 // TextSpan(text: '\n'),
                                 /* TextSpan(
                                    text: "",
                                    //style: newGameNameTextStyle,
                                  ),*/
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 1,
                            ),*/

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//2
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  //child: ContentHeadingWidget(heading: "Popular with Friends"),
                ),
                new Text('find  blood', style: TextStyle(
                  fontSize: 40,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        new Card(
                          child: new Container(
                            padding: new EdgeInsets.all(20.0),
                            child: new Column(
                              children: <Widget>[
                                new Image.asset('images/992.png',width: 50,height: 50,),
                                // new Text('hospi mm'),
                                new Text('mahalla'),

                                RaisedButton(
                                    color: Colors.blueGrey,
                                    padding: EdgeInsets.fromLTRB(1, 1, 1, 1),
                                    onPressed: () {
                                      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new place()));
                                      //);
                                    },
                                    child: Text(
                                      'contact',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),

                        new Card(
                          child: new Container(
                            padding: new EdgeInsets.all(20.0),
                            child: new Column(
                              children: <Widget>[
                                new Image.asset('images/123.jpg',width: 50,height: 50,),
                                //  new Text('hospital mm'),
                                new Text('mansora'),

                                RaisedButton(
                                    color: Colors.blueGrey,
                                    padding: EdgeInsets.fromLTRB(1, 1, 1, 1),
                                    onPressed: () {
                                      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new ldonor()));
                                      //);
                                    },
                                    child: Text(
                                      'ask',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                        new Card(
                          child: new Container(
                            padding: new EdgeInsets.all(20.0),
                            child: new Column(
                              children: <Widget>[
                                new Image.asset('images/44.png',width: 50,height: 50,),
                                new Text('donate'),
                                //  new Text('hh@gmail.com'),

                                RaisedButton(
                                    color: Colors.blueGrey,
                                    padding: EdgeInsets.fromLTRB(1, 1, 1, 1),
                                    onPressed: () {
                                      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Enter()));
                                      //);
                                    },
                                    child: Text(
                                      'go',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                        /* for (var i = 0; i < popularWithFriends.length; i++)
                          PopularWithFriendsWidget(
                            imagePath: popularWithFriends[i],
                          ),*/
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          ///////////////////////////////////////////////
          //make this comment
          /*Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  //child: ContentHeadingWidget(heading: "Popular with Friends"),
                ),
                new Text('donate your blood'),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        new Card(
                          child: new Container(
                            padding: new EdgeInsets.all(20.0),
                            child: new Column(
                              children: <Widget>[
                                new Image.asset('images/blood.jpg',width: 60,height: 60,),
                                new Text('dr mm'),
                                //new Text('hh@gmail.com'),

                                RaisedButton(
                                    color: Colors.blueGrey,
                                    padding: EdgeInsets.fromLTRB(1, 1, 1, 1),
                                    onPressed: () {
                                      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new ldonor()));
                                      //);
                                    },
                                    child: Text(
                                      'go',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                        new Card(
                          child: new Container(
                            padding: new EdgeInsets.all(20.0),
                            child: new Column(
                              children: <Widget>[
                                new Image.asset('images/blood.jpg',width: 60,height: 60,),
                                 new Text('dr mm'),
                              //  new Text('hh@gmail.com'),

                                RaisedButton(
                                    color: Colors.blueGrey,
                                    padding: EdgeInsets.fromLTRB(1, 1, 1, 1),
                                    onPressed: () {
                                      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Enter()));
                                      //);
                                    },
                                    child: Text(
                                      'go',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                        new Card(
                          child: new Container(
                            padding: new EdgeInsets.all(20.0),
                            child: new Column(
                              children: <Widget>[
                                new Image.asset('images/blood.jpg',width: 60,height: 60,),
                                new Text('dr mm'),
                               // new Text('hh@gmail.com'),

                                RaisedButton(
                                    color: Colors.blueGrey,
                                    padding: EdgeInsets.fromLTRB(1, 1, 1, 1),
                                    onPressed: () {
                                      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Enter()));
                                      //);
                                    },
                                    child: Text(
                                      'go',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                        /* for (var i = 0; i < popularWithFriends.length; i++)
                          PopularWithFriendsWidget(
                            imagePath: popularWithFriends[i],
                          ),*/
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )*/
          /* Expanded(
            child: Column(
              children: <Widget>[*/
          /* Text(
            'Welcome',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey),
          ),*/
          //3
          Text(
            '  Welcome Blood Bank ',
            style: TextStyle(fontSize: 18, color: Colors.red),
          ),
          //],)),
          /*  Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  new Card(
                    child: new Container(
                      padding: new EdgeInsets.all(32.0),
                      child: new Column(
                        children: <Widget>[
                          new Image.asset('images/shos.png'),
                          new Text('dr mm'),
                          new Text('hh@gmail.com'),

                          RaisedButton(
                              color: Colors.purple,
                              padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                              onPressed: () {
                                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new emailApp()));
                                //);
                              },
                              child: Text(
                                'ask',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                  new Card(
                    child: new Container(
                      padding: new EdgeInsets.all(32.0),
                      child: new Column(
                        children: <Widget>[
                          new Image.asset('images/shos.png'),
                           new Text('hos mm'),
                          //new Text('hh@gmail.com'),

                          RaisedButton(
                              color: Colors.purple,
                              padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                              onPressed: () {
                                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new hos()));
                                //);
                              },
                              child: Text(
                                'find',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                  new Card(
                    child: new Container(
                      padding: new EdgeInsets.all(32.0),
                      child: new Column(
                        children: <Widget>[
                          new Image.asset('images/shos.png'),
                          new Text('hos mm'),
                         // new Text('hh@gmail.com'),

                          RaisedButton(
                              color: Colors.purple,
                              padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                              onPressed: () {
                                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new hos()));
                                //);
                              },
                              child: Text(
                                'find',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                  /* for (var i = 0; i < popularWithFriends.length; i++)
                          PopularWithFriendsWidget(
                            imagePath: popularWithFriends[i],
                          ),*/
                ],
              ),
            ),
          ),*/
          //stop
          /*   Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // ContentHeadingWidget(heading: "Continue playing"),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          height: screenHeight * 0.20,
                          decoration: BoxDecoration(
                            //  gradient: appGradient,
                            color: Colors.purple,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Row(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  ClipRRect(
                                      borderRadius: BorderRadius.all(Radius.circular(8)),

                                      child:new Column(
                                        children: <Widget>[
                                          new Text(' contact with any doctor '),
                                          new Text(' find any '),

                                          // child:
                                          // new FlatButton.icon(onPressed: null, icon:null, label: null),
                                          new Row(
                                              children: <Widget>[
                                                RaisedButton(
                                                    color: Colors.white,
                                                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                                    onPressed: () {
                                                      Holaa.holaaChat(
                                                          context: context,
                                                          projectName: "<hero>");
                                                    },
                                                    child: Text(
                                                      'ask',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        fontSize: 30,
                                                        color: Colors.purple,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    )),
                                                Divider(height: 30, color: Colors.purple),

                                                new Text(' find info or'),
              // This trailing comma makes auto-formatting nicer for build methods.
             ] )

                                               /* RaisedButton(
                                                    color: Colors.white,
                                                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                                    onPressed: () {
                                                      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new emailApp()));
                                                      //);
                                                    },
                                                    child: Text(
                                                      'add',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        fontSize: 30,
                                                        color: Colors.purple,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    )),]),*/
                                         ,new Text(' https://facebook.com/n '),
                                          new Text('norayhya119@gmail.com '),
               /* Holaa.holaaChat(
                    context: context,
                    projectName: "<thehero>"),*/
                                        ],

                                      )
                                    // new Text('welcome to our hero you can feel better '),
                                    //child:new Text('welcome to our hero you can feel better '),

                                    // new Image.asset('images/h.jpg'),
                                    //child: Image.asset('images/h.jpg'),
                                    /*  lastPlayedGames[0].imagePath,
                                  height: screenHeight * 0.13,
                                  width: 80,
                                  fit: BoxFit.cover,
                                ),*/
                                  ),
                                  /* Positioned(
                                left: 25,
                                right: 25,
                                top: 0,
                                bottom: 0,
                               /* child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: Colors.red,
                                  ),
                                ),*/
                              ),*/
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12),

                                child: RichText(
                                  text: TextSpan(
                                    // text: " you can ask ",
                                    /* children: [
                                  TextSpan(text: lastPlayedGames[0].name, style: headingTwoTextStyle.copyWith(color: Colors.white, fontSize: 16)),
                                  TextSpan(text: '\n'),
                                  TextSpan(text: "${lastPlayedGames[0].hoursPlayed} hours played", style: bodyTextStyle.copyWith(color: Colors.white, fontSize: 16, height: 1.5),),
                                ],*/
                                  ),
                                ),
                              ),
                              //floatingActionButton:
                              FloatingActionButton(
                                onPressed: ()  {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Holaa.holaaChat(
                                          context: context,
                                          projectName: "hero")));

                                },
                                tooltip: 'Increment',
                                child: Icon(Icons.chat),
                              ),
                            ],
                          ),
                        ),
                      ),*/
        ],
      ),
      //  ),
      //  ),
      // ],
      // ),
      //  ],),

      // ),
      //),
      // ]  ),

    );
  }
}
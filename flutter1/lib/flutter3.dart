import 'package:flutter/material.dart';
class App3 extends StatefulWidget {
  const App3({Key? key}) : super(key: key);

  @override
  State<App3> createState() => _App3State();
}

class _App3State extends State<App3> {
  String ? _dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome corse'),
        actions: [
          PopupMenuButton(onSelected:print,itemBuilder: (BuildContext context){
            return[
              PopupMenuItem(child: Text('codfy'),value: 'codfy',),
              PopupMenuItem(child: Text('codfy'),value: 'codify',),
            ];


          })
        ],
      ),
      body: Column(
        children: [

          //1image
          Center(
            child: Image.asset('assets/nor.png'),
          ),//
          //2 buttons

          Center(
            child: TextButton(
              child: Text('click me'),
              onPressed: (){
                print('clicked now');
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              child: Text('click me'),
              onPressed: (){
                print('clicked now');
              },
            ),
          ),
          Center(
            child: IconButton(
              //child: Text('click me'),
              icon: Icon(Icons.face_retouching_natural)
              ,
              onPressed: (){
                print('clicked now');
              },
            ),
          ),
          Center(
            child: InkWell(
              //child: Text('click me'),
              child: Icon(Icons.analytics),
              onTap: (){
                print('clicked now');
              },
            ),
          ),
          //on satfulwidget
          Center(
            child: DropdownButton(
              hint: Text('choose'),
              items: [
                DropdownMenuItem(child: Text('codfiy'),value: 'colleage',),
                DropdownMenuItem(child: Text('codfiy'),value: 'colleage2',)
              ],
              value: _dropdownValue,
              onChanged: (value){
                setState(() {
                  _dropdownValue= value as String;
                });
              },
            ),


          )

        ],
      ),
    );
  }
}

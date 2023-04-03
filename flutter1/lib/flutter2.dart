import 'package:flutter/material.dart';
//container,text,icon,snakbar
class APP2 extends StatefulWidget {
  const APP2({Key? key}) : super(key: key);

  @override
  State<APP2> createState() => _APP2State();
}

class _APP2State extends State<APP2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome'), backgroundColor: Colors.amberAccent,),
      body: Column(
        children: [
          //0
          Center(
            child: Container(
              child: Text('Welcome'),
              //color: Colors.amberAccent

              width: 100,
              height: 100,
              //space outside it
              margin: EdgeInsets.all(30),
              //space iside containetr
              padding: EdgeInsets.all(10),

              transform: Matrix4.rotationY(0.2),
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const[
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(10, 10),
                    )
                  ]

              ),

            ),


          ),


          //1    //text
          Text('this first session in our class to learn more more more',
            textAlign: TextAlign.center, overflow: TextOverflow.ellipsis,),
          //2 icon
          Icon(
            Icons.analytics,
            color: Colors.amberAccent,
            size: 40,
          )
          ,
          //3 button ,Snackbar message
          TextButton(
              onPressed: ()=>_showSnackBar(context), child: Text('show snackBar'))

        ],
      ),
    );
  }




}
//funcation outsidemain
void _showSnackBar(BuildContext context) {
  final snackBar = SnackBar(
    backgroundColor: Colors.amberAccent,
    content: Text('message!'),
    duration: const Duration(seconds: 7),
    action: SnackBarAction(
      label: 'undo',
      textColor: Colors.white,
      onPressed: (){
        print('undo');
      },
    ),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);

}
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//backgroundColor: Colors.black,
      body:  ListView(

        children: [
          Container(
            child:  Center(child: Text('تواصل معنا', textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.amberAccent,fontSize: 40.0),)),
          ),
           SizedBox(),
           Container(
               width: 50.0,
               height: 50.0,
               decoration: new BoxDecoration(
                   shape: BoxShape.circle,
                   image: new DecorationImage(
                       fit: BoxFit.fill,
                       image: new AssetImage('assets/task.png')
                   )
               )
          ),
          SizedBox(),
    Center(
    child: TextField(
    decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: 'الاسم',
        floatingLabelStyle: TextStyle(color: Colors.black),
        hintText: 'الاسم',
        hintStyle: TextStyle(fontSize: 20.0, color: Colors.black),
    enabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(width: 3, color: Colors.black),
    borderRadius: BorderRadius.circular(15),
    ),
    focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(width: 3, color: Colors.black),
    borderRadius: BorderRadius.circular(15),
    )),
    ),),
    SizedBox(
  //  width: 200.0,
    height: 20.0,),
          Center(
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'البريد الالكتروني',
                  floatingLabelStyle: TextStyle(color: Colors.black),
                  hintText: 'البريد الالكتلروني',
                  hintStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),),
          SizedBox(
            //  width: 200.0,
            height: 20.0,),
          Center(
            child: TextField(

              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'رقم الجوال ',
                  floatingLabelStyle: TextStyle(color: Colors.black),
                  hintText: 'رقم الجوال',
                  hintStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),),
          SizedBox(
            //  width: 200.0,
            height: 20.0,),
          Center(
            child: TextField(

              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'الرساله ',
                  floatingLabelStyle: TextStyle(color: Colors.black),
    hintText: 'الرساله',
                  hintStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),),
          SizedBox(
            //  width: 200.0,
            height: 20.0,),
          ElevatedButton(
            child: Text("ارسال"),
            onPressed: () => print("it's pressed"),
            style: ElevatedButton.styleFrom(
              primary: Colors.amberAccent,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.0),
              ),
            ),
          )
   ],
      ),
    );
  }
}

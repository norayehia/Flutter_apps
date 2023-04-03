import 'package:flutter/material.dart';
import 'package:recodsofusers/models/patientmodel.dart';
import 'package:recodsofusers/utils/databasehelper.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';
import 'package:sticky_headers/sticky_headers.dart';

//import 'package:shape_of_view/shape_of_view.dart';
//8
class ViewData extends StatefulWidget {
  //const ({Key? key}) : super(key: key);

  @override
  State<ViewData> createState() => _ViewDataState();
}

class _ViewDataState extends State<ViewData> {
  //81 list of objects patient ,databasehelper that stored in but in todo app storedinlistb
  List<ModelClass> patients = new List.empty(growable: true);
  final dbHelper = DatabaseHelper.instance;
  ModelClass? _modelClass;
  @override
  Widget build(BuildContext context) {
    //9listview each row of 2 card
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "patients records",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        //extract widget in bottom then call it
        child: listv(),
      ),
    );
  }

  //82 method fetch  to retrive data from databasehelper then view to user

  fetch() async {
    //83 go to databasehelper to funcation query allow that can getdat
    final allRows = await dbHelper.queryAllRows();
    print('query all rows');
    allRows?.forEach((row) {
      _modelClass =
          ModelClass(row["name"], row["email"], row["pass"], row["_id"]);
      //now all records of patient in databbase in list patient now so in //9 we view this list in listview
      patients.add(_modelClass!);
    });
    //to refresh list
    setState(() {});
  }

//imortin publiymal stickyheader,,shap of view //https://pub.dev/packages/shape_of_view_null_safe/versions
  //check if 0 print no pat ,if found data in list patient then listviw stiky take header(container) then content of it
  List<String> listhead = ['patient records'];
  Widget listv() {
    return patients.length == 0
        ? Center(
            child: Text("No Patient"),
          )
        : new ListView.builder(
            itemCount: listhead.length,
            itemBuilder: (context, index) {
              return new StickyHeader(
                  header: new Container(
                    height: 30,
                    color: Colors.orange,
                    //padding: const EdgeInsets.symmetric(12.0),
                    alignment: Alignment.centerLeft,
                    child: new Text(listhead[index]),
                  ),

                  //2 content container and use shap of view that we get from depdances
                  content: Container(
                    color: Colors.grey,
                    child: Card(
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: patients.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1,
                        ),
                        //card insidecard shapviewrubble independences
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                              child: ShapeOfView(
                                  shape: BubbleShape(
                                      position: BubblePosition.Bottom,
                                      arrowPositionPercent: 0.5,
                                      borderRadius: 20,
                                      arrowHeight: 10,
                                      arrowWidth: 10),
                                  child: Container(
                                    color: Colors.orange,
                                    child: Column(
                                      children: [
                                        Center(
                                            child: Text(
                                          patients[index].name,
                                          style: TextStyle(fontSize: 20),
                                        )),
                                        Center(
                                            child: Text(patients[index].email,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    overflow: TextOverflow
                                                        .ellipsis))),

                                        SizedBox(
                                          height: 10,
                                        ),
                                        //shapview of star to put key
                                        Center(
                                          child: ShapeOfView(
                                            shape:
                                                PolygonShape(numberOfSides: 9),
                                            child: Container(
                                                height: 60,
                                                width: 60,
                                                color: Colors.white,
                                                child: Center(
                                                  child: Text(
                                                      patients[index]
                                                          .key
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontSize: 30)),
                                                )),
                                          ),
                                        )
                                      ],
                                    ),
                                  )));
                        },
                      ),
                    ),
                  ));
            });
  }

  @override
  void initState() {
    //to fetch data from method we defin in helper and callit above,,then in listview
    fetch();
  }
}

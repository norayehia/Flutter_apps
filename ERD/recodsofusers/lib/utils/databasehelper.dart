import 'dart:io';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

//1sqlit make database  and tables
//2go to register define name,pass,emal
class DatabaseHelper {
  static final _databaseName = "MyDatabase.db";
  static final _databaseVersion = 1;

  static final table = 'Patient';

  static final columnId = '_id';
  static final columnName = 'name';
  static final columnemail = 'email';
  static final columnpassword = 'password';

  // make this a singleton class
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  // only have a single app-wide reference to the database
//check if database not created creatinitone
  static Database? _database;
  Future<Database> get database async {
    if (_database != null) return _database!;
// lazily instantiate the db the first time it is accessed
    _database = await _initDatabase();
    return _database!;
  }

  /*//nowcreatfuncationinitthatwecallabovebecause nulldatabase

  // this opens the database (and creates it if it doesn't exist)
  _initDatabase() async {
    //Directory documentsDirectory = await getApplicationDocumentsDirectory();
    //String path = join(documentsDirectory.path, _databaseName);
    String path = await getDatabasesPath();
    //Directory documentsDirectory = await getApplicationDocumentsDirectory();
    //String path = join(documentsDirectory.path, _databaseName);
    return openDatabase(join(path, _databaseName),
        version: _databaseVersion,
        //function to create table in that database
        onCreate: _onCreate);
  }
*/

  _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    return openDatabase(path, version: _databaseVersion, onCreate: _onCreate);
  }

  // SQL code to create the database table
  Future _onCreate(Database db, int version) async {
    await db.execute('''
          create table $table (
            $columnId integer primary key autoincrement,
            
            $columnName text not null
            ,
            $columnemail text not null
            ,
            $columnpassword text not null
          )''');
  }
  //6 insert
  //7go to register to put databashelper instance varable abov name,email,
// Inserts a row in the database where each key in the Map is a column name
  // and the value is the column value. The return value is the id of the
  // inserted row.
  /*
  Future<int> insert(Car car) async {
    Database db = await instance.database;
    return await db.insert(table, {'name': car.name, 'miles': car.miles});
  }*/

  Future<int> insert(Map<String, dynamic> row) async {
    Database? db = await instance.database;
    return await db.insert(table, row);
  }

  //83functionqueryallow
  // All of the rows are returned as a list of maps, where each map is
  // a key-value list of columns.
  //https://stackoverflow.com/questions/71721979/non-nullable-instance-field-id-must-be-initialized-non-nullable-instance-fiel
  Future<List<Map<String, dynamic?>>?> queryAllRows() async {
    Database? db = await instance.database;
    return await db.query(table);
  }
}

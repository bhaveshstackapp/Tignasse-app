import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DataBaseSqlFLite {
//  static DataBaseSqlFLite _dataBaseSqlFLite;
//  static final _dbName = "BookAppDatabase.db";
//  static final _dbVersion = 1;

  static final _tableImage = 'imageTable';
  static final _tableBookList = 'bookListTable';
  static final _tableBookDetailsList = 'bookDetailsListTable';

  static final columnId = '_id';
  static final imageList = 'imageList';
  static final bookList = 'bookList';
  static final bookDetailsList = 'bookDetailsList';
  static final productIdColumn = 'productId';

  DataBaseSqlFLite._privateConstructor();

  static final DataBaseSqlFLite instance =
      DataBaseSqlFLite._privateConstructor();
  static Database _database;

  Future<Database> get database async {
    if (_database != null) return _database;

//    _database = await _initiateDatabase();
    _database = await initDB();
    return _database;
  }

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, 'employee_manager.db');

    return await openDatabase(
        path,
        version: 1,
        onOpen: (db) {},
        onCreate: (Database db, int version) async {
          await db.execute('CREATE TABLE $_tableImage('
              '$imageList TEXT'
              ')');

          await db.execute('CREATE TABLE $_tableBookList('
              '$bookList TEXT'
              ')');

          await db.execute('CREATE TABLE $_tableBookDetailsList('
              '$productIdColumn TEXT,'
              '$bookDetailsList TEXT'
              ')');
        }
    );
  }


  //BgImage Data
  insertBgImage(Map<String, dynamic> jsonMap) async {
    final db = await database;
    final res = await db.insert(_tableImage, jsonMap);
    return res;
  }
  Future<List<Map<String, dynamic>>> bgImageShow() async {
    Database db = await database;
    return await db.query(_tableImage);
  }
  Future<int> deleteAllBgImage() async {
    final db = await database;
    final res = await db.rawDelete('DELETE FROM $_tableImage');
    return res;
  }


  //Book List Data
  insertBook(Map<String, dynamic> jsonMap) async {
//  await deleteAllEmployees();
    final db = await database;
    final res = await db.insert(_tableBookList, jsonMap);
    return res;
  }
  Future<List<Map<String, dynamic>>> bookShow() async {
    Database db = await database;
    return await db.query(_tableBookList);
  }
  Future<int> deleteAllBook() async {
    final db = await database;
    final res = await db.rawDelete('DELETE FROM $_tableImage');
    return res;
  }

  //Book Details List Data
    insertBookDetails(Map<String, dynamic> jsonMap) async {
    final db = await database;
    final res = await db.insert(_tableBookDetailsList, jsonMap);
    return res;
  }
  Future<List<Map<String, dynamic>>> bookDetailsShow() async {
    Database db = await database;
    return await db.query(_tableBookDetailsList);
  }
  Future<int> deleteAllBookDetails() async {
    final db = await database;
    final res = await db.rawDelete('DELETE FROM $_tableImage');
    return res;
  }
}

import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DataBaseSqlFLite {
  static DataBaseSqlFLite _dataBaseSqlFLite;
  static final _dbName = "BookAppDatabase.db";
  static final _dbVersion = 1;

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

/*  factory DataBaseSqlFLite() {

    if (_dataBaseSqlFLite == null) {
      _dataBaseSqlFLite = DataBaseSqlFLite._privateConstructor(); // This is executed only once, singleton object
    }
    return _dataBaseSqlFLite;
  }*/

  /*_initiateDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, _dbName);
    await openDatabase(path, version: _dbVersion, onCreate: _onCreate);
  }*/

  /*Future _onCreate(Database db, int version) async {
    await db.execute('''CREATE TABLE $_tableImage (
        $bgName TEXT
        )''');
//    db.execute('''
//    CREATE TABLE $_tableImage
//     "$columnId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL",
//     "$columnName TEXT Not NULL"
//    ''');

  }*/

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
//              '$bookDetailsList TEXT'
              ')');

        }
    );


  }

/*  bookDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, 'employee_manager.db');

    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
          await db.execute('CREATE TABLE $_tableBookList('
              '$bookList TEXT'
              ')');
        });
  }*/

  /*bookDetailsDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, 'employee_manager.db');

    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
          await db.execute('CREATE TABLE $_bookDetailsList('
              '$bookDetailsList TEXT'
              ')');
        });
  }*/




  //BgImage Data
  insertBgImage(Map<String, dynamic> jsonMap) async {
//  await deleteAllEmployees();
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
//  insertBookDetails(String productId, String data) async {
    insertBookDetails(Map<String, dynamic> jsonMap) async {
//  await deleteAllEmployees();
    final db = await database;
//    int res = await db.rawInsert(
//        'INSERT INTO $_tableBookDetailsList($productIdColumn, $bookDetailsList) VALUES($productId, $data)');
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
/*  Future<int> insert(Map<String, dynamic> jsonMap) async {
    Database db = await this.database;
    return await db.insert(_tableImage, jsonMap);
//    await db.rawInsert('INSERT INTO $table ($columnName, $columnAge) VALUES("Bob", 23)');
  }*/

/*static Database _database;
  Future<Database> get database async {
    if (_database != null)
      return _database;

    // if _database is null we instantiate it
    _database = await initDB();
    return _database;
  }


  Future initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _dbName);
    return await openDatabase(path, version: 1, onOpen: (db) {
    }, onCreate: (Database db, int version) async {
      await db.execute("CREATE TABLE $_tableImage ("
          "$columnId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,"
          "$columnName TEXT,"

          ")");
    });
  }

  insert(Map<String, dynamic> jsonMap) async {
    final db = await database;
    var res = await db.insert(_tableImage, jsonMap);
    return res;
  }
  */
/*  newClient(Client newClient) async {
    final db = await database;
    var res = await db.rawInsert(
        "INSERT Into $_tableImage(id,imagelist)"
            " VALUES (${newClient.id},${newClient.firstName})");
    return res;
  }*/

/*getClient(int id) async {
    final db = await database;
    var res =await  db.query("Client", where: "id = ?", whereArgs: [id]);
    return res.isNotEmpty ? Client.fromMap(res.first) : Null ;
  }*/

//  'id INTEGER PRIMARY KEY,'

}

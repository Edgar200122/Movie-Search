import 'package:sqflite/sqflite.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';

class SqfliteService {
  static Database? database;
  Future<void> openDataBase() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'demo.db');

    database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      // When creating the db, create the table
      await db.execute(
          'CREATE TABLE Test (id INTEGER PRIMARY KEY, movie_id INTEGER, movie_image TEXT, movie_name TEXT)');
    });
  }

  static Future<List<Map>> getData(
      int id, int movieId, String image, String name) async {
    if (database != null) {
      List<Map> results = await database!.query('Test',
          where: 'id = ? or movie_id = ? or movie_image = ? or movie_name = ?',
          whereArgs: [
            id,
            movieId,
            image,
            name,
          ]);
      return results;
    } else {
      return <Map>[];
    }
  }

  static void addData(int id, String image, String name) async {
    if (database != null) {
      database!.rawQuery('INSERT INTO Test($id, $image, $name)');
    }
  }
}

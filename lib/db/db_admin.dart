import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBAdmin {
  initDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String pathDatabase = join(directory.path, 'billsDB.db');
    openDatabase(
      pathDatabase,
      version: 1,
      onCreate: (Database db, int version) {
        db.execute(""" 
          CREATE TABLE bills(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            amount REAL,
            date TEXT,
            category TEXT,
            description TEXT
          )
        """);
      },
    );
  }
}

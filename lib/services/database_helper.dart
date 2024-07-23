import 'package:my_money_tracker/consts/consts.dart';
import 'package:my_money_tracker/main.dart';
import 'package:my_money_tracker/models/testing_model.dart';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static Future<Database> getDB({String? tableName}) async {
    return openDatabase(join(await getDatabasesPath(), databaseName));
  }

  static Future addNote(TestingModel testingModel) async {
    final db = await getDB();
    return await db.insert(testingTable, testingModel.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future updateNote(TestingModel testingModel) async {
    final db = await getDB();
    return await db.update(testingTable, testingModel.toJson(),
        where: 'id = ?',
        whereArgs: [testingModel.id],
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future deleteNote(TestingModel testingModel) async {
    final db = await getDB();
    return await db
        .delete(testingTable, where: 'id = ?', whereArgs: [testingModel.id]);
  }

  static Future<List<TestingModel>?> getNote() async {
    final db = await getDB();
    final List<Map<String, dynamic>> maps = await db.query(testingTable);
    if (maps.isEmpty) {
      return null;
    }
    return List.generate(
        maps.length, (index) => TestingModel.fromJson(maps[index]));
  }
}

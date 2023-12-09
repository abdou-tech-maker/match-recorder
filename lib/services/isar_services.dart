import 'package:isar/isar.dart';
import 'package:match_recorder/models/record_model.dart';
import 'package:path_provider/path_provider.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDB();
  }

  Future<void> saveRecord(RecordModel newRecord) async {
    final isar = await db;
    isar.writeTxnSync<int>(() => isar.recordModels.putSync(newRecord));
  }

  Future<List<RecordModel>> getAllRecords() async {
    final isar = await db;
    return await isar.recordModels.where().findAll();
  }

  Stream<List<RecordModel>> listenToCourses() async* {
    final isar = await db;
    yield* isar.recordModels.where().watch(fireImmediately: true);
  }

  Future<void> cleanDb() async {
    final isar = await db;
    await isar.writeTxn(() => isar.clear());
  }

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationDocumentsDirectory();

      return await Isar.open(
        [RecordModelSchema],
        inspector: true,
        directory: dir.path,
      );
    }

    return Future.value(Isar.getInstance());
  }
}

import 'package:isar/isar.dart';

part 'record_model.g.dart';

@Collection()
class RecordModel {
  Id id = Isar.autoIncrement;
  late String name;
  late String path;
}

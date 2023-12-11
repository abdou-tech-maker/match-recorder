import 'package:isar/isar.dart';

part 'record_model.g.dart';

@Collection()
class RecordModel {
  Id id = Isar.autoIncrement;
  String? name;
  String? path;
}

import 'package:hive/hive.dart';

part 'users.g.dart';

@HiveType(typeId: 0)
class User extends HiveObject {
  @HiveField(0)
  int? id;

  @HiveField(1)
  String? userName;

  @HiveField(2)
  String? email;

  @HiveField(3)
  String? password;
}

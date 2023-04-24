import 'package:isar/isar.dart';

part 'users.g.dart';

@collection
class User {
  Id id = Isar.autoIncrement; // auto increment id.
  String name; // name of the user.
  String email; // email of the user.
  String password; // password of the user.

  User({
    required this.name,
    required this.email,
    required this.password,
  });
}

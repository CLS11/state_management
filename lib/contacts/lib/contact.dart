import 'package:uuid/uuid.dart';

class Contact {
  Contact({
    required this.name,
  }) : id = const Uuid().v4();

  final String name;
  final String id;
}

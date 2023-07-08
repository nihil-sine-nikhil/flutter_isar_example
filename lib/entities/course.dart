import 'package:isar/isar.dart';
import 'package:isarhive/entities/student.dart';
import 'package:isarhive/entities/teacher.dart';

part 'course.g.dart';

@Collection()
class Course {
  Id id = Isar.autoIncrement;
  late String title;

  @Backlink(to: "course")
  final teacher = IsarLink<Teacher>();

  @Backlink(to: "courses")
  final students = IsarLinks<Student>();
}

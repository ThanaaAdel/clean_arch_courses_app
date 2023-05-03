

import 'package:hive/hive.dart';
part 'course_entity.g.dart';
@HiveType(typeId: 0)
class CourseEntity {
  @HiveField(0)
  final String? courseImage;
  @HiveField(1)
  final num? coursePrice;
  @HiveField(2)
  final String? instructorName;
  @HiveField(3)
  final String? instructorPhoto;
  @HiveField(4)
  final String? courseTitle;
  @HiveField(5)
  final int? lessonsNumber;
  @HiveField(6)
  final String? courseDuration;

  CourseEntity({
    required this.courseImage,
    required this.coursePrice,
    required this.instructorName,
    required this.instructorPhoto,
    required this.courseTitle,
    required this.lessonsNumber,
    required this.courseDuration,
  });
}

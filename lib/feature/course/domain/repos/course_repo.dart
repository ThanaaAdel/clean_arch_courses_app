import 'package:clean_arch_courses_app/core/error/failure.dart';
import 'package:clean_arch_courses_app/feature/course/domain/entities/course_entity.dart';
import 'package:dartz/dartz.dart';

abstract class CourseRepo {
  Future<Either<Failure, List<CourseEntity>>> fetchCourses();
}

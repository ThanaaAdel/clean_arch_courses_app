import 'package:clean_arch_courses_app/core/error/failure.dart';
import 'package:clean_arch_courses_app/core/use_case/use_case.dart';
import 'package:clean_arch_courses_app/feature/course/domain/entities/course_entity.dart';
import 'package:clean_arch_courses_app/feature/course/domain/repos/course_repo.dart';
import 'package:dartz/dartz.dart';

class FetchCoursesUseCase extends UseCase<List<CourseEntity>, NoParam> {
  final CourseRepo courseRepo;

  FetchCoursesUseCase(this.courseRepo);

  @override
  Future<Either<Failure, List<CourseEntity>>> call([NoParam? param]) async {
    return await courseRepo.fetchCourses();
  }
}

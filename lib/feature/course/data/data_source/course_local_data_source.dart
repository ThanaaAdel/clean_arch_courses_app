import 'package:clean_arch_courses_app/feature/course/domain/entities/course_entity.dart';

abstract class CourseLocalDataSource {
  List<CourseEntity> fetchCourses();

}
class CourseLocalDataSourceImpl extends CourseLocalDataSource{
  @override
  List<CourseEntity> fetchCourses() {
    // TODO: implement fetchCourses
    throw UnimplementedError();
  }

}
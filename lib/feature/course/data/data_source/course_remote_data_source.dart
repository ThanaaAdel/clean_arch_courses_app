import 'package:clean_arch_courses_app/core/utils/functions/api_servise.dart';
import 'package:clean_arch_courses_app/feature/course/domain/entities/course_entity.dart';

abstract class CourseRemoteDataSource {
  Future<List<CourseEntity>> fetchCourses();
}

class CourseRemoteDataSourceImpl extends CourseRemoteDataSource {
  final ApiServise apiServise;

  CourseRemoteDataSourceImpl(this.apiServise);

  @override
  Future<List<CourseEntity>> fetchCourses() async {
    var data = await apiServise.get(endPoint: 'free-courses');
    List<CourseEntity> coursesList = getCoursesListData(
        data); // get the all data in map
    return coursesList;
  }

  List<CourseEntity> getCoursesListData(Map<String, dynamic> data) {
    List<CourseEntity> courses = []; // create empity list of course
    for (var courseMap in data['items']) {
      courses.add(courseMap.fromjson(courseMap));
    }
    return courses;
  }
}

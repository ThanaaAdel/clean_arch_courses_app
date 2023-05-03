import 'package:clean_arch_courses_app/feature/course/domain/entities/course_entity.dart';

import 'main_instructor.dart';

class CoursesModel extends CourseEntity {
  int? id;
  String? title;
  String? slug;
  String? duration;
  String? image;
  String? thumbnail;
  int? price;
  int? discountPrice;
  int? publish;
  int? status;
  int? level;
  dynamic trailerLink;
  dynamic host;
  dynamic metaKeywords;
  dynamic metaDescription;
  int? totalEnrolled;
  int? totalRating;
  String? startDate;
  String? endDate;
  int? numberOfLessons;
  int? numberOfQuizzes;
  String? numberOfHours;
  MainInstructor? mainInstructor;
  DateTime? createdAt;
  DateTime? updatedAt;
  bool? isEnrolled;
  bool? bookmarks;
  bool? carts;

  CoursesModel({
    this.id,
    this.title,
    this.slug,
    this.duration,
    this.image,
    this.thumbnail,
    this.price,
    this.discountPrice,
    this.publish,
    this.status,
    this.level,
    this.trailerLink,
    this.host,
    this.metaKeywords,
    this.metaDescription,
    this.totalEnrolled,
    this.totalRating,
    this.startDate,
    this.endDate,
    this.numberOfLessons,
    this.numberOfQuizzes,
    this.numberOfHours,
    this.mainInstructor,
    this.createdAt,
    this.updatedAt,
    this.isEnrolled,
    this.bookmarks,
    this.carts,
  }) : super(
            courseImage: image ?? '',
            coursePrice: price!,
            instructorName: mainInstructor!.name,
            instructorPhoto: mainInstructor!.image,
            courseTitle: title!,
            lessonsNumber: numberOfLessons!,
            courseDuration: duration!
  );

  factory CoursesModel.fromJson(Map<String, dynamic> json) => CoursesModel(
        id: json['id'] as int?,
        title: json['title'] as String?,
        slug: json['slug'] as String?,
        duration: json['duration'] as String?,
        image: json['image'] as String?,
        thumbnail: json['thumbnail'] as String?,
        price: json['price'] as int?,
        discountPrice: json['discount_price'] as int?,
        publish: json['publish'] as int?,
        status: json['status'] as int?,
        level: json['level'] as int?,
        trailerLink: json['trailer_link'] as dynamic,
        host: json['host'] as dynamic,
        metaKeywords: json['meta_keywords'] as dynamic,
        metaDescription: json['meta_description'] as dynamic,
        totalEnrolled: json['total_enrolled'] as int?,
        totalRating: json['total_rating'] as int?,
        startDate: json['start_date'] as String?,
        endDate: json['end_date'] as String?,
        numberOfLessons: json['number_of_lessons'] as int?,
        numberOfQuizzes: json['number_of_quizzes'] as int?,
        numberOfHours: json['number_of_hours'] as String?,
        mainInstructor: json['main_instructor'] == null
            ? null
            : MainInstructor.fromJson(
                json['main_instructor'] as Map<String, dynamic>),
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        updatedAt: json['updated_at'] == null
            ? null
            : DateTime.parse(json['updated_at'] as String),
        isEnrolled: json['is_enrolled'] as bool?,
        bookmarks: json['bookmarks'] as bool?,
        carts: json['carts'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'slug': slug,
        'duration': duration,
        'image': image,
        'thumbnail': thumbnail,
        'price': price,
        'discount_price': discountPrice,
        'publish': publish,
        'status': status,
        'level': level,
        'trailer_link': trailerLink,
        'host': host,
        'meta_keywords': metaKeywords,
        'meta_description': metaDescription,
        'total_enrolled': totalEnrolled,
        'total_rating': totalRating,
        'start_date': startDate,
        'end_date': endDate,
        'number_of_lessons': numberOfLessons,
        'number_of_quizzes': numberOfQuizzes,
        'number_of_hours': numberOfHours,
        'main_instructor': mainInstructor?.toJson(),
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
        'is_enrolled': isEnrolled,
        'bookmarks': bookmarks,
        'carts': carts,
      };
}

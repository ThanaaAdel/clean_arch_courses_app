import 'package:clean_arch_courses_app/core/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<type, Param> {
  Future<Either<Failure, type>> call([Param param]);
}

class NoParam {}

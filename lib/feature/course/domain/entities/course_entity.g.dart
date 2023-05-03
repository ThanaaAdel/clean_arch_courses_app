// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CourseEntityAdapter extends TypeAdapter<CourseEntity> {
  @override
  final int typeId = 0;

  @override
  CourseEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CourseEntity(
      courseImage: fields[0] as String?,
      coursePrice: fields[1] as num?,
      instructorName: fields[2] as String?,
      instructorPhoto: fields[3] as String?,
      courseTitle: fields[4] as String?,
      lessonsNumber: fields[5] as int?,
      courseDuration: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CourseEntity obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.courseImage)
      ..writeByte(1)
      ..write(obj.coursePrice)
      ..writeByte(2)
      ..write(obj.instructorName)
      ..writeByte(3)
      ..write(obj.instructorPhoto)
      ..writeByte(4)
      ..write(obj.courseTitle)
      ..writeByte(5)
      ..write(obj.lessonsNumber)
      ..writeByte(6)
      ..write(obj.courseDuration);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CourseEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

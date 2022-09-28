import 'package:code_union/features/auth/domain/entities/schedule_entity.dart';

class ScheduleModel extends ScheduleEntity {
  ScheduleModel({
    required super.id,
    required super.opening,
    required super.closing,
  });

  factory ScheduleModel.fromJson(Map<String, dynamic> json) {
    return ScheduleModel(
      id: json['id'],
      opening: json['opening'],
      closing: json['closing'],
    );
  }
}

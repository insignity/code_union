import 'package:code_union/features/auth/data/models/coords_model.dart';
import 'package:code_union/features/auth/domain/entities/restaurant_entity.dart';

import 'image_model.dart';
import 'schedule_model.dart';
import 'user_model.dart';

class RestaurantModel extends RestaurantEntity {
  RestaurantModel({
    required super.schedule,
    required super.coords,
    required super.images,
    required super.user,
    required super.id,
    required super.isFavorite,
    required super.title,
    required super.description,
    required super.scheduleId,
    required super.coordsId,
    required super.userId,
  });

  factory RestaurantModel.fromJson(Map<String, dynamic> json) {
    return RestaurantModel(
      schedule: json['schedule'] != null
          ? ScheduleModel.fromJson(json['schedule'])
          : null,
      coords:
          json['coords'] != null ? CoordsModel.fromJson(json['coords']) : null,
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageModel.fromJson(e))
          .toList(),
      user: json['user'] != null ? UserModel.fromJson(json['user']) : null,
      id: json['id'],
      isFavorite: json['isFavorite'],
      title: json['title'],
      description: json['description'],
      scheduleId: json['scheduleId'],
      coordsId: json['coordsId'],
      userId: json['userId'],
    );
  }
}

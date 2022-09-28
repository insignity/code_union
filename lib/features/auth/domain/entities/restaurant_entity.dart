import 'package:equatable/equatable.dart';

import 'coords_entity.dart';
import 'image_entity.dart';
import 'schedule_entity.dart';
import 'user_entity.dart';

class RestaurantEntity extends Equatable {
  final int id;
  final bool isFavorite;
  final String title;
  final String description;
  final int scheduleId;
  final int coordsId;
  final int userId;
  final ScheduleEntity? schedule;
  final CoordsEntity? coords;
  final List<ImageEntity>? images;
  final UserEntity? user;

  const RestaurantEntity({
    required this.schedule,
    required this.coords,
    required this.images,
    required this.user,
    required this.id,
    required this.isFavorite,
    required this.title,
    required this.description,
    required this.scheduleId,
    required this.coordsId,
    required this.userId,
  });

  @override
  List<Object?> get props => [
        schedule,
        coords,
        images,
        user,
        id,
        isFavorite,
        title,
        description,
        scheduleId,
        coordsId,
        userId,
      ];
}


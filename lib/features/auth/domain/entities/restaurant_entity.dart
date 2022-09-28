class RestaurantEntity {
  final int id;
  final bool isFavorite;
  final String title;
  final String description;
  final int scheduleId;
  final int coordsId;
  final int userId;
  final Schedule schedule;
  final Coords coords;
  final List<Image> images;
  final User user;

  RestaurantEntity({
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
}

class Schedule {
  final int id;
  final DateTime opening;
  final DateTime closing;

  Schedule({
    required this.id,
    required this.opening,
    required this.closing,
  });
}

class Coords {
  final int id;
  final double longitude;
  final double latitude;
  final String addressName;

  Coords({
    required this.id,
    required this.longitude,
    required this.latitude,
    required this.addressName,
  });
}

class Image {
  final int id;
  final String url;
  final int restaurantId;

  Image({
    required this.id,
    required this.url,
    required this.restaurantId,
  });
}

class User {
  final int id;
  final String email;
  final String nickname;

  User({
    required this.id,
    required this.email,
    required this.nickname,
  });
}

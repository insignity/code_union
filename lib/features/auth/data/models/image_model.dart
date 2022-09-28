import 'package:code_union/features/auth/domain/entities/image_entity.dart';

class ImageModel extends ImageEntity {
  ImageModel({
    required super.id,
    required super.url,
    required super.restaurantId,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) => ImageModel(
        id: json['id'],
        url: json['url'],
        restaurantId: json['restaurantId'],
      );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
      'restaurantId': restaurantId,
    };
  }
}

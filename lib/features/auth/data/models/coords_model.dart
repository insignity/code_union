import 'package:code_union/features/auth/domain/entities/coords_entity.dart';

class CoordsModel extends CoordsEntity {
  CoordsModel({
    required super.id,
    required super.longitude,
    required super.latitude,
    required super.addressName,
  });

  factory CoordsModel.fromJson(Map<String, dynamic> json) {
    return CoordsModel(
      id: json['id'],
      longitude: json['longitude'],
      latitude: json['latitude'],
      addressName: json['addressName'],
    );
  }
}

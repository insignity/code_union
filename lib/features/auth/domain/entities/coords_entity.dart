
import 'package:equatable/equatable.dart';

class CoordsEntity extends Equatable {
  final int id;
  final double longitude;
  final double latitude;
  final String addressName;

  const CoordsEntity({
    required this.id,
    required this.longitude,
    required this.latitude,
    required this.addressName,
  });

  @override
  List<Object?> get props => [id, longitude, latitude, addressName];
}

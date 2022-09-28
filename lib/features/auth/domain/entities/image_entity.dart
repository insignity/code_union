
import 'package:equatable/equatable.dart';

class ImageEntity extends Equatable {
  final int id;
  final String url;
  final int restaurantId;

  const ImageEntity({
    required this.id,
    required this.url,
    required this.restaurantId,
  });

  @override
  List<Object?> get props => [id, url, restaurantId];
}

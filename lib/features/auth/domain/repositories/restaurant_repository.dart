import 'package:code_union/core/error/failure.dart';
import 'package:code_union/features/auth/domain/entities/restaurant_entity.dart';
import 'package:dartz/dartz.dart';

abstract class RestaurantRepository {
  Future<Either<Failure, List<RestaurantEntity>>> getAllRestaurants(int page);
  Future<Either<Failure, List<RestaurantEntity>>> searchRestaurants(String query);
}

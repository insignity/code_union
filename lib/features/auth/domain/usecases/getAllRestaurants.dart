import 'package:code_union/core/error/failure.dart';
import 'package:code_union/core/usecases/usecase.dart';
import 'package:code_union/features/auth/domain/repositories/restaurant_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../entities/restaurant_entity.dart';

class GetAllRestaurants
    extends UseCase<List<RestaurantEntity>, PageRestaurantParams> {
  final RestaurantRepository restaurantRepository;

  GetAllRestaurants(this.restaurantRepository);

  Future<Either<Failure, List<RestaurantEntity>>> call(
      PageRestaurantParams params) async {
    return restaurantRepository.getAllRestaurants(params.page);
  }
}

class PageRestaurantParams extends Equatable {
  final int page;

  const PageRestaurantParams({required this.page});

  @override
  List<Object?> get props => [];
}

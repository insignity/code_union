import 'package:code_union/core/error/failure.dart';
import 'package:code_union/features/auth/domain/entities/restaurant_entity.dart';
import 'package:code_union/features/auth/domain/repositories/restaurant_repository.dart';
import 'package:code_union/usecases/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class SearchRestaurants
    extends UseCase<List<RestaurantEntity>, SearchRestaurantParams> {
  final RestaurantRepository restaurantRepository;

  SearchRestaurants(this.restaurantRepository);

  Future<Either<Failure, List<RestaurantEntity>>> call(
      SearchRestaurantParams searchRestaurantParams) async {
    return restaurantRepository.searchRestaurants(
      searchRestaurantParams.query,
    );
  }
}

class SearchRestaurantParams extends Equatable {
  final String query;

  SearchRestaurantParams({required this.query});

  @override
  List<Object?> get props => [];
}

import 'package:code_union/features/auth/data/models/restaurant_model.dart';

abstract class RestaurantRemoteDataSource {
  Future<List<RestaurantModel>> getAllRestaurants(int page);

  Future<List<RestaurantModel>> searchPerson(String query);
}

class RemoteDataSourceImpl implements RestaurantRemoteDataSource {
  @override
  Future<List<RestaurantModel>> getAllRestaurants(int page) async {
    throw UnimplementedError();
  }

  @override
  Future<List<RestaurantModel>> searchPerson(String query) async {
    // TODO: implement searchPerson
    throw UnimplementedError();
  }
}

part of 'favorite_cities_cubit.dart';

abstract class FavoriteCitiesState extends Equatable {
  const FavoriteCitiesState();
  @override
  List<Object?> get props => [];
}

class FavoriteCitiesInitial extends FavoriteCitiesState {}

class FavoriteCitiesFetchInProgress extends FavoriteCitiesState {}

class FavoriteCitiesFetchSuccess extends FavoriteCitiesState {
  final List<Weather> favoriteCitiesWeather;

  const FavoriteCitiesFetchSuccess({required this.favoriteCitiesWeather});

  @override
  List<Object> get props => [favoriteCitiesWeather];

  FavoriteCitiesFetchSuccess copyWith({
    List<Weather>? favoriteCitiesWeather,
  }) {
    return FavoriteCitiesFetchSuccess(
      favoriteCitiesWeather:
          favoriteCitiesWeather ?? this.favoriteCitiesWeather,
    );
  }
}

class FavoriteCitiesFetchFailure extends FavoriteCitiesState {
  final String error;

  const FavoriteCitiesFetchFailure({required this.error});

  @override
  List<Object> get props => [error];
}

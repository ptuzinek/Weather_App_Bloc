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

  const FavoriteCitiesFetchSuccess({
    required this.favoriteCitiesWeather,
  });

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

  Map<String, dynamic> toMap() {
    return {
      'favoriteCitiesWeather':
          favoriteCitiesWeather.map((x) => x.toJson()).toList(),
    };
  }

  factory FavoriteCitiesFetchSuccess.fromMap(Map<String, dynamic> map) {
    return FavoriteCitiesFetchSuccess(
      favoriteCitiesWeather: List<Weather>.from(
          map['favoriteCitiesWeather']?.map((x) => Weather.fromJson(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory FavoriteCitiesFetchSuccess.fromJson(String source) =>
      FavoriteCitiesFetchSuccess.fromMap(json.decode(source));

  @override
  String toString() =>
      'FavoriteCitiesFetchSuccess(favoriteCitiesWeather: $favoriteCitiesWeather)';
}

class FavoriteCitiesFetchFailure extends FavoriteCitiesState {
  final String error;

  const FavoriteCitiesFetchFailure({required this.error});

  @override
  List<Object> get props => [error];
}

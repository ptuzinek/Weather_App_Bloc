import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:weather_app_bloc/data/models/weather.dart';
import 'package:weather_app_bloc/data/repositories/weather_repository.dart';

part 'weather_new_event.dart';
part 'weather_new_state.dart';
part 'weather_new_bloc.freezed.dart';
part 'weather_new_bloc.g.dart';

class WeatherNewBloc extends HydratedBloc<WeatherNewEvent, WeatherNewState> {
  final WeatherRepository weatherRepository;

  WeatherNewBloc({required this.weatherRepository})
      : super(WeatherLocalisationFetchInProgress()) {
    on<CityWeatherRequested>((event, emit) async {
      emit(WeatherFetchInProgress(cityName: event.cityName));
      try {
        final weather = await weatherRepository.getCityWeather(event.cityName);
        emit(WeatherFetchSuccess(weather: weather));
      } catch (e) {
        emit(WeatherFetchFailure(error: e.toString()));
      }
    });
    // on<LocationWeatherRequested>((event, emit) async {
    //   try {
    //     final weather = await weatherRepository.getLocationWeather();
    //     emit(WeatherFetchSuccess(weather: weather));
    //   } catch (e) {
    //     emit(WeatherFetchFailure(error: e.toString()));
    //   }
    // });
    on<FavoriteCityWeatherRequested>((event, emit) {
      emit(WeatherFetchSuccess(weather: event.weather));
    });
  }
  @override
  void onTransition(Transition<WeatherNewEvent, WeatherNewState> transition) {
    print(transition);
    super.onTransition(transition);
  }

  @override
  WeatherNewState? fromJson(Map<String, dynamic> json) =>
      WeatherNewState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(WeatherNewState state) => state.toJson();
}

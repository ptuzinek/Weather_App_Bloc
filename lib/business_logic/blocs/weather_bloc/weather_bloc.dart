import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:weather_app_bloc/data/models/weather.dart';
import 'package:weather_app_bloc/data/repositories/weather_repository.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';
part 'weather_bloc.g.dart';

class WeatherBloc extends HydratedBloc<WeatherEvent, WeatherState> {
  final WeatherRepository weatherRepository;

  WeatherBloc({required this.weatherRepository})
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
    on<LocationWeatherRequested>((event, emit) async {
      try {
        final weather = await weatherRepository.getLocationWeather();
        emit(WeatherFetchSuccess(weather: weather));
      } catch (e) {
        emit(WeatherFetchFailure(error: e.toString()));
      }
    });
    on<FavoriteCityWeatherRequested>((event, emit) {
      emit(WeatherFetchSuccess(weather: event.weather));
    });
  }
  @override
  void onTransition(Transition<WeatherEvent, WeatherState> transition) {
    print(transition);
    super.onTransition(transition);
  }

  @override
  WeatherState fromJson(Map<String, dynamic> json) {
    print(' --------------- >>>> Weather Loaded');
    return WeatherState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(WeatherState state) {
    print(' --------------- >>>> Weather Saved');
    return state.toJson();
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'location_response.freezed.dart';
part 'location_response.g.dart';

@freezed
class Coordinates with _$Coordinates {
  factory Coordinates({
    @JsonKey(name: 'lat') required double lat,
    @JsonKey(name: 'lon') required double lon,
  }) = _Coordinates;

  factory Coordinates.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesFromJson(json);
}

@freezed
class LocationResponse with _$LocationResponse {
  factory LocationResponse({
    @JsonKey(name: 'coord') required Coordinates coordinates,
    required String name,
  }) = _LocationResponse;

  factory LocationResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationResponseFromJson(json);
}

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
abstract class ApplicationEvent with _$ApplicationEvent {
  const factory ApplicationEvent.color(Color accent) = _Color;
}

@freezed
abstract class ApplicationState with _$ApplicationState {
  const factory ApplicationState.state({
    @ColorSerializer() Color accent,
  }) = _State;

  factory ApplicationState.fromJson(Map<String, dynamic> json) => _$ApplicationStateFromJson(json);
}

class ColorSerializer implements JsonConverter<Color, int> {
  const ColorSerializer();

  @override
  Color fromJson(int json) => Color(json);

  @override
  int toJson(Color object) => object?.value ?? 0;
}

import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/movie.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState.init() = HomeInitialization;
  factory HomeState.loading() = HomeLoading;
  factory HomeState.dataLoaded(List<Movie> movies) = HomeLoaded;
  factory HomeState.error(String message) = HomeError;
}

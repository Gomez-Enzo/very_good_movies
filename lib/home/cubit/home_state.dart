part of 'home_cubit.dart';

/// {@template home_state}
/// The cubit state of the home feature.
/// {@endtemplate}
abstract class HomeState extends Equatable {
  /// {@macro home_state}
  const HomeState();

  @override
  List<Object?> get props => [];
}

/// {@template home_initial}
/// This represent the initial state of the home feature.
/// {@endtemplate}
class HomeInitial extends HomeState {
  /// {@macro home_initial}
  const HomeInitial();
}

/// {@template home_attempting}
/// This represent the attempting state of the home feature.
/// {@endtemplate}
class HomeAttempting extends HomeState {
  /// {@macro home_attempting}
  const HomeAttempting();
}

/// {@template home_success}
/// This represent the state of success for the request made in the
/// home feature.
/// {@endtemplate}
class HomeSuccess extends HomeState {
  /// {@macro home_success}
  const HomeSuccess({
    required this.popularMovies,
    required this.nowPlayingMovies,
    required this.popularIndex,
    required this.nowPlayingIndex,
  });

  final List<Movie> popularMovies;
  final List<Movie> nowPlayingMovies;
  final int popularIndex;
  final int nowPlayingIndex;

  @override
  List<Object?> get props => [
        popularMovies,
        nowPlayingMovies,
        popularIndex,
        nowPlayingIndex,
      ];
}

/// {@template home_fetching_more_movies}
/// This represent the state of success when fetching more
/// movies for the movie slider.
/// {@endtemplate}
class HomeFetchingMoreMovies extends HomeSuccess {
  /// {@macro home_fetching_more_movies}
  const HomeFetchingMoreMovies({
    required super.popularMovies,
    required super.nowPlayingMovies,
    required super.popularIndex,
    required super.nowPlayingIndex,
  });
}

/// {@template home_failure}
/// This represent the error state of the home feature.
/// {@endtemplate}
class HomeFailure extends HomeState {
  /// {@macro home_failure}
  bool get isInternetFailure => this is HomeInternetFailure;
  bool get isTypeFailure => this is HomeTypeFailure;
  const HomeFailure();
}

/// {@template home_internet_failure}
/// When the state of failure is due to the lack of internet.
/// {@endtemplate}
class HomeInternetFailure extends HomeFailure {
  /// {@macro home_internet_failure}
  const HomeInternetFailure();
}

/// {@template home_type_failure}
/// When the state of failure is due to the type of the response not
/// matching the expected type.
/// {@endtemplate}
class HomeTypeFailure extends HomeFailure {
  /// {@macro home_type_failure}
  const HomeTypeFailure();
}

/// {@template home_unknown_failure}
/// When the state of failure is due to an unknown error.
/// {@endtemplate}
class HomeUnknownFailure extends HomeFailure {
  /// {@macro home_unknown_failure}
  const HomeUnknownFailure();
}

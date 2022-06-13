part of 'splash_cubit.dart';

@immutable
abstract class SplashState {}

class SplashInitial extends SplashState {}
class SplashInitializing extends SplashState {}
class SplashLoading extends SplashState {}
class SplashLoaded extends SplashState {}
class SplashException extends SplashState {
  final Exception exception;

  SplashException(this.exception);
}

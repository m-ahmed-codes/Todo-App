part of 'on_boarding_bloc_bloc.dart';

@immutable
abstract class OnBoardingBlocState extends Equatable {
  const OnBoardingBlocState();

  @override
  List<Object> get props => [];
}

class OnBoardingBlocInitial extends OnBoardingBlocState {}

class NavigateOnBoardPage_one_State extends OnBoardingBlocState {}

class NavigateOnBackPage_State extends OnBoardingBlocState {}

class NavigateOnBoardPage_two_State extends OnBoardingBlocState {}

class NavigateOnBoardPage_three_State extends OnBoardingBlocState {}

class NavigateOnWelcomePageState extends OnBoardingBlocState {}

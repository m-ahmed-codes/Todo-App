part of 'on_boarding_bloc_bloc.dart';

@immutable
abstract class OnBoardingBlocEvent extends Equatable {
  const OnBoardingBlocEvent();

  @override
  List<Object> get props => [];
}
class NavigateOnWelcomePageEvent extends OnBoardingBlocEvent {}

class NavigateOnBackPage_Event extends OnBoardingBlocEvent {}

class NavigateOnBoardPage_two_Event extends OnBoardingBlocEvent {}

class NavigateOnBoardPage_three_Event extends OnBoardingBlocEvent {}


class NavigateOnBoardPage_one_Event extends OnBoardingBlocEvent {}

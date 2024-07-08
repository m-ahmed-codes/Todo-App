import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'on_boarding_bloc_event.dart';
part 'on_boarding_bloc_state.dart';

class OnBoardingBlocBloc
    extends Bloc<OnBoardingBlocEvent, OnBoardingBlocState> {
  OnBoardingBlocBloc() : super(OnBoardingBlocInitial()) {
    on<NavigateOnBoardPage_one_Event>(navigateOnBoardPage_one_Event);
    on<NavigateOnWelcomePageEvent>(navigateOnWelcomePageEvent);
    on<NavigateOnBoardPage_two_Event>(navigateOnBoardPage_two_Event);
    on<NavigateOnBoardPage_three_Event>(navigateOnBoardPage_three_Event);
    on<NavigateOnBackPage_Event>(navigateOnBackPage_Event);
  }

  FutureOr<void> navigateOnBoardPage_one_Event(
      NavigateOnBoardPage_one_Event event, Emitter<OnBoardingBlocState> emit) 
      {

        emit(NavigateOnBoardPage_one_State());
      }



  FutureOr<void> navigateOnWelcomePageEvent(NavigateOnWelcomePageEvent event, Emitter<OnBoardingBlocState> emit) {

     emit(NavigateOnWelcomePageState());

  }

  FutureOr<void> navigateOnBoardPage_two_Event(NavigateOnBoardPage_two_Event event, Emitter<OnBoardingBlocState> emit) {

      emit(NavigateOnBoardPage_two_State());
  }

  FutureOr<void> navigateOnBoardPage_three_Event(NavigateOnBoardPage_three_Event event, Emitter<OnBoardingBlocState> emit) {
      emit(NavigateOnBoardPage_three_State());
  }

  FutureOr<void> navigateOnBackPage_Event(NavigateOnBackPage_Event event, Emitter<OnBoardingBlocState> emit) {
     emit(NavigateOnBackPage_State());
  }
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application1/presentation/intro_three_screen/models/intro_three_model.dart';
part 'intro_three_event.dart';
part 'intro_three_state.dart';

/// A bloc that manages the state of a IntroThree according to the event that is dispatched to it.
class IntroThreeBloc extends Bloc<IntroThreeEvent, IntroThreeState> {
  IntroThreeBloc(IntroThreeState initialState) : super(initialState) {
    on<IntroThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    IntroThreeInitialEvent event,
    Emitter<IntroThreeState> emit,
  ) async {}
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application1/presentation/intro_two_screen/models/intro_two_model.dart';
part 'intro_two_event.dart';
part 'intro_two_state.dart';

/// A bloc that manages the state of a IntroTwo according to the event that is dispatched to it.
class IntroTwoBloc extends Bloc<IntroTwoEvent, IntroTwoState> {
  IntroTwoBloc(IntroTwoState initialState) : super(initialState) {
    on<IntroTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    IntroTwoInitialEvent event,
    Emitter<IntroTwoState> emit,
  ) async {}
}

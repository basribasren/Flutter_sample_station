import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application1/presentation/selecting_car_three_screen/models/selecting_car_three_model.dart';
part 'selecting_car_three_event.dart';
part 'selecting_car_three_state.dart';

/// A bloc that manages the state of a SelectingCarThree according to the event that is dispatched to it.
class SelectingCarThreeBloc
    extends Bloc<SelectingCarThreeEvent, SelectingCarThreeState> {
  SelectingCarThreeBloc(SelectingCarThreeState initialState)
      : super(initialState) {
    on<SelectingCarThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SelectingCarThreeInitialEvent event,
    Emitter<SelectingCarThreeState> emit,
  ) async {}
}

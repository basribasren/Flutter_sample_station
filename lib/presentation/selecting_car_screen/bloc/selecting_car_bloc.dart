import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application1/presentation/selecting_car_screen/models/selecting_car_model.dart';
part 'selecting_car_event.dart';
part 'selecting_car_state.dart';

/// A bloc that manages the state of a SelectingCar according to the event that is dispatched to it.
class SelectingCarBloc extends Bloc<SelectingCarEvent, SelectingCarState> {
  SelectingCarBloc(SelectingCarState initialState) : super(initialState) {
    on<SelectingCarInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SelectingCarInitialEvent event,
    Emitter<SelectingCarState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}

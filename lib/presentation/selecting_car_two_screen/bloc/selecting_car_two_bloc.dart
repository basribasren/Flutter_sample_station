import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application1/presentation/selecting_car_two_screen/models/selecting_car_two_model.dart';
part 'selecting_car_two_event.dart';
part 'selecting_car_two_state.dart';

/// A bloc that manages the state of a SelectingCarTwo according to the event that is dispatched to it.
class SelectingCarTwoBloc
    extends Bloc<SelectingCarTwoEvent, SelectingCarTwoState> {
  SelectingCarTwoBloc(SelectingCarTwoState initialState) : super(initialState) {
    on<SelectingCarTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SelectingCarTwoInitialEvent event,
    Emitter<SelectingCarTwoState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}

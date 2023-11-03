import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application1/presentation/add_vehicle_screen/models/add_vehicle_model.dart';
part 'add_vehicle_event.dart';
part 'add_vehicle_state.dart';

/// A bloc that manages the state of a AddVehicle according to the event that is dispatched to it.
class AddVehicleBloc extends Bloc<AddVehicleEvent, AddVehicleState> {
  AddVehicleBloc(AddVehicleState initialState) : super(initialState) {
    on<AddVehicleInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddVehicleInitialEvent event,
    Emitter<AddVehicleState> emit,
  ) async {}
}

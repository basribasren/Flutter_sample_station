import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application1/presentation/view_charger_page/models/view_charger_model.dart';
part 'view_charger_event.dart';
part 'view_charger_state.dart';

/// A bloc that manages the state of a ViewCharger according to the event that is dispatched to it.
class ViewChargerBloc extends Bloc<ViewChargerEvent, ViewChargerState> {
  ViewChargerBloc(ViewChargerState initialState) : super(initialState) {
    on<ViewChargerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ViewChargerInitialEvent event,
    Emitter<ViewChargerState> emit,
  ) async {}
}

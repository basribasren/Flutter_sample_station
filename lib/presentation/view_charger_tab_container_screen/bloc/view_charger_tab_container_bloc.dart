import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application1/presentation/view_charger_tab_container_screen/models/view_charger_tab_container_model.dart';
part 'view_charger_tab_container_event.dart';
part 'view_charger_tab_container_state.dart';

/// A bloc that manages the state of a ViewChargerTabContainer according to the event that is dispatched to it.
class ViewChargerTabContainerBloc
    extends Bloc<ViewChargerTabContainerEvent, ViewChargerTabContainerState> {
  ViewChargerTabContainerBloc(ViewChargerTabContainerState initialState)
      : super(initialState) {
    on<ViewChargerTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ViewChargerTabContainerInitialEvent event,
    Emitter<ViewChargerTabContainerState> emit,
  ) async {}
}

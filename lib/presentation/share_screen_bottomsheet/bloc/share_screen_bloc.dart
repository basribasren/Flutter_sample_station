import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application1/presentation/share_screen_bottomsheet/models/share_screen_model.dart';
part 'share_screen_event.dart';
part 'share_screen_state.dart';

/// A bloc that manages the state of a ShareScreen according to the event that is dispatched to it.
class ShareScreenBloc extends Bloc<ShareScreenEvent, ShareScreenState> {
  ShareScreenBloc(ShareScreenState initialState) : super(initialState) {
    on<ShareScreenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ShareScreenInitialEvent event,
    Emitter<ShareScreenState> emit,
  ) async {}
}

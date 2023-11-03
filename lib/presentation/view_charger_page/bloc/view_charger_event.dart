// ignore_for_file: must_be_immutable

part of 'view_charger_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ViewCharger widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ViewChargerEvent extends Equatable {}

/// Event that is dispatched when the ViewCharger widget is first created.
class ViewChargerInitialEvent extends ViewChargerEvent {
  @override
  List<Object?> get props => [];
}

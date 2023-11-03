// ignore_for_file: must_be_immutable

part of 'view_charger_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ViewChargerTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ViewChargerTabContainerEvent extends Equatable {}

/// Event that is dispatched when the ViewChargerTabContainer widget is first created.
class ViewChargerTabContainerInitialEvent extends ViewChargerTabContainerEvent {
  @override
  List<Object?> get props => [];
}

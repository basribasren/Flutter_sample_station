// ignore_for_file: must_be_immutable

part of 'add_vehicle_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddVehicle widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddVehicleEvent extends Equatable {}

/// Event that is dispatched when the AddVehicle widget is first created.
class AddVehicleInitialEvent extends AddVehicleEvent {
  @override
  List<Object?> get props => [];
}

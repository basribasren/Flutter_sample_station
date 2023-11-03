// ignore_for_file: must_be_immutable

part of 'selecting_car_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SelectingCar widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SelectingCarEvent extends Equatable {}

/// Event that is dispatched when the SelectingCar widget is first created.
class SelectingCarInitialEvent extends SelectingCarEvent {
  @override
  List<Object?> get props => [];
}

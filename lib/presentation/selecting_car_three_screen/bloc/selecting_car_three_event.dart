// ignore_for_file: must_be_immutable

part of 'selecting_car_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SelectingCarThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SelectingCarThreeEvent extends Equatable {}

/// Event that is dispatched when the SelectingCarThree widget is first created.
class SelectingCarThreeInitialEvent extends SelectingCarThreeEvent {
  @override
  List<Object?> get props => [];
}

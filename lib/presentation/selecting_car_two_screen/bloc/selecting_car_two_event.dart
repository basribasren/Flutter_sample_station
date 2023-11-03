// ignore_for_file: must_be_immutable

part of 'selecting_car_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SelectingCarTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SelectingCarTwoEvent extends Equatable {}

/// Event that is dispatched when the SelectingCarTwo widget is first created.
class SelectingCarTwoInitialEvent extends SelectingCarTwoEvent {
  @override
  List<Object?> get props => [];
}

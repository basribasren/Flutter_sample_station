// ignore_for_file: must_be_immutable

part of 'share_screen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ShareScreen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ShareScreenEvent extends Equatable {}

/// Event that is dispatched when the ShareScreen widget is first created.
class ShareScreenInitialEvent extends ShareScreenEvent {
  @override
  List<Object?> get props => [];
}

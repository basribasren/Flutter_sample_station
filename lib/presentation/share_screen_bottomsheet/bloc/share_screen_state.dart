// ignore_for_file: must_be_immutable

part of 'share_screen_bloc.dart';

/// Represents the state of ShareScreen in the application.
class ShareScreenState extends Equatable {
  ShareScreenState({this.shareScreenModelObj});

  ShareScreenModel? shareScreenModelObj;

  @override
  List<Object?> get props => [
        shareScreenModelObj,
      ];
  ShareScreenState copyWith({ShareScreenModel? shareScreenModelObj}) {
    return ShareScreenState(
      shareScreenModelObj: shareScreenModelObj ?? this.shareScreenModelObj,
    );
  }
}

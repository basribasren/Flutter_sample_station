// ignore_for_file: must_be_immutable

part of 'view_charger_bloc.dart';

/// Represents the state of ViewCharger in the application.
class ViewChargerState extends Equatable {
  ViewChargerState({this.viewChargerModelObj});

  ViewChargerModel? viewChargerModelObj;

  @override
  List<Object?> get props => [
        viewChargerModelObj,
      ];
  ViewChargerState copyWith({ViewChargerModel? viewChargerModelObj}) {
    return ViewChargerState(
      viewChargerModelObj: viewChargerModelObj ?? this.viewChargerModelObj,
    );
  }
}

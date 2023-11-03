// ignore_for_file: must_be_immutable

part of 'view_charger_tab_container_bloc.dart';

/// Represents the state of ViewChargerTabContainer in the application.
class ViewChargerTabContainerState extends Equatable {
  ViewChargerTabContainerState({this.viewChargerTabContainerModelObj});

  ViewChargerTabContainerModel? viewChargerTabContainerModelObj;

  @override
  List<Object?> get props => [
        viewChargerTabContainerModelObj,
      ];
  ViewChargerTabContainerState copyWith(
      {ViewChargerTabContainerModel? viewChargerTabContainerModelObj}) {
    return ViewChargerTabContainerState(
      viewChargerTabContainerModelObj: viewChargerTabContainerModelObj ??
          this.viewChargerTabContainerModelObj,
    );
  }
}

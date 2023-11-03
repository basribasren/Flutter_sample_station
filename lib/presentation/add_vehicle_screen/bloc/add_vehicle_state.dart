// ignore_for_file: must_be_immutable

part of 'add_vehicle_bloc.dart';

/// Represents the state of AddVehicle in the application.
class AddVehicleState extends Equatable {
  AddVehicleState({this.addVehicleModelObj});

  AddVehicleModel? addVehicleModelObj;

  @override
  List<Object?> get props => [
        addVehicleModelObj,
      ];
  AddVehicleState copyWith({AddVehicleModel? addVehicleModelObj}) {
    return AddVehicleState(
      addVehicleModelObj: addVehicleModelObj ?? this.addVehicleModelObj,
    );
  }
}

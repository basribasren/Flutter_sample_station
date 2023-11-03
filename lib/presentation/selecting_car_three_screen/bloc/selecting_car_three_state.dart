// ignore_for_file: must_be_immutable

part of 'selecting_car_three_bloc.dart';

/// Represents the state of SelectingCarThree in the application.
class SelectingCarThreeState extends Equatable {
  SelectingCarThreeState({this.selectingCarThreeModelObj});

  SelectingCarThreeModel? selectingCarThreeModelObj;

  @override
  List<Object?> get props => [
        selectingCarThreeModelObj,
      ];
  SelectingCarThreeState copyWith(
      {SelectingCarThreeModel? selectingCarThreeModelObj}) {
    return SelectingCarThreeState(
      selectingCarThreeModelObj:
          selectingCarThreeModelObj ?? this.selectingCarThreeModelObj,
    );
  }
}

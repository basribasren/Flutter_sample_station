// ignore_for_file: must_be_immutable

part of 'selecting_car_bloc.dart';

/// Represents the state of SelectingCar in the application.
class SelectingCarState extends Equatable {
  SelectingCarState({
    this.searchController,
    this.selectingCarModelObj,
  });

  TextEditingController? searchController;

  SelectingCarModel? selectingCarModelObj;

  @override
  List<Object?> get props => [
        searchController,
        selectingCarModelObj,
      ];
  SelectingCarState copyWith({
    TextEditingController? searchController,
    SelectingCarModel? selectingCarModelObj,
  }) {
    return SelectingCarState(
      searchController: searchController ?? this.searchController,
      selectingCarModelObj: selectingCarModelObj ?? this.selectingCarModelObj,
    );
  }
}

// ignore_for_file: must_be_immutable

part of 'selecting_car_two_bloc.dart';

/// Represents the state of SelectingCarTwo in the application.
class SelectingCarTwoState extends Equatable {
  SelectingCarTwoState({
    this.searchController,
    this.selectingCarTwoModelObj,
  });

  TextEditingController? searchController;

  SelectingCarTwoModel? selectingCarTwoModelObj;

  @override
  List<Object?> get props => [
        searchController,
        selectingCarTwoModelObj,
      ];
  SelectingCarTwoState copyWith({
    TextEditingController? searchController,
    SelectingCarTwoModel? selectingCarTwoModelObj,
  }) {
    return SelectingCarTwoState(
      searchController: searchController ?? this.searchController,
      selectingCarTwoModelObj:
          selectingCarTwoModelObj ?? this.selectingCarTwoModelObj,
    );
  }
}

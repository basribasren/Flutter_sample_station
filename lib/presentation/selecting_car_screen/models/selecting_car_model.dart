// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [selecting_car_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectingCarModel extends Equatable {
  SelectingCarModel() {}

  SelectingCarModel copyWith() {
    return SelectingCarModel();
  }

  @override
  List<Object?> get props => [];
}
